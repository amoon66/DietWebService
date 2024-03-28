package com.springproj.dietwebservice.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.springproj.dietwebservice.annotation.LoginCheck;
import com.springproj.dietwebservice.domain.BoardVO;
import com.springproj.dietwebservice.domain.CommentVO;
import com.springproj.dietwebservice.domain.MemberVO;
import com.springproj.dietwebservice.service.BoardService;
import com.springproj.dietwebservice.service.CommentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;



@Controller
//@SessionAttributes("board")
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	@Autowired
	private CommentService commentService;
	//검색 조건 목록 설정
		@ModelAttribute("condition")
		public Map<String,String> searchConditionMap(){
			Map<String, String> conditionMap = new HashMap<>();
			
			conditionMap.put("제목", "TITLE");
			conditionMap.put("내용", "CONTENT");
			
			return conditionMap;
			
		}
	
	// 글 등록 화면
	@GetMapping("/insertBoard.do")
	@LoginCheck
	public String insertBoardForm() {
		return "board/insertBoard";
	}
	
	//글 등록 처리 
	@PostMapping("/insertBoard.do")
	@LoginCheck
	public String insertBoardProc(BoardVO board, HttpSession session, RedirectAttributes redirectAttributes) {

//		System.out.println(board);
		 
		 if (!"".equals(board.getTitle()) && !"".equals(board.getContent())) {
			 
//			 System.out.println("정상동작 진입");
			 
		// 파일 업로드 처리
		String fileSaveFolder = session.getServletContext().getRealPath("/boardUpload/");
		MultipartFile uploadFile = board.getUploadFile();
		
		
		if(!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();
			
			board.setFileName(fileName);
			
			try {
				uploadFile.transferTo(new File(fileSaveFolder+fileName));
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}else {
			board.setFileName("");
		}
		
		MemberVO member = (MemberVO) session.getAttribute("mymember");
		
		board.setWriter(member.getNickname());
		
		
		boardService.insertService(board);
		
		return "redirect:getBoardList.do";
	 }else {
//		 System.out.println("비정상동작 진입");
		 redirectAttributes.addFlashAttribute("insertFailed", "글 등록 실패");
		 return "redirect:insertBoard.do";
	 }
	}
	
	
	//게시판 목록
	@GetMapping("/getBoardList.do")
	@LoginCheck
	public String getBoardList(Model model, BoardVO board, HttpServletRequest request) {
		
		int page = 1;
		int limit = 10;
		
		if(board.getSearchCondition() == null) {
			board.setSearchCondition("TITLE");
		}
		
		if(board.getSearchKeyword() == null) {
			board.setSearchKeyword("");
		}
				
		if(request.getParameter("page") != null){
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		int listCount = boardService.getListCount() ; // 총 리스트 수를 받아옴
		  
		List<BoardVO> list = boardService.getBoardList(board, page, limit); // 리스트를 받아옴
		 
		int endPage = (int)(Math.ceil(page / 10.0)) * 10; //ceil은 소숫점을 무조건 올림한다.
		int startPage = endPage - 9;//간단하게 엔드가 20번이면 -9해서 11을 스타트페이지로 계산하면된다
		int maxPage = (int)(Math.ceil((listCount * 1.0) / limit));//55게시글이 있으면 페이지는 6번까지만 보여주는 되는걸 계산
			
		if (endPage > maxPage) endPage = maxPage;
			
			//jsp화면에서 반복문을 반복되면서 페이징 목록을 생성하도록 리퀘스트로 전달
			
	 		model.addAttribute("page", page); // 현재 페이지 수
	 		model.addAttribute("maxpage", maxPage); // 최대 페이지 수
	 		model.addAttribute("startpage", startPage); // 현재 페이지에 표시할 첫 페이지 수
	 		model.addAttribute("endpage", endPage); // 현재 페이지에 표시할 끝 페이지 수
			model.addAttribute("listcount", listCount); // 글 수			
			model.addAttribute("boardList", list);
		
		
			return "board/getBoardList";
	}
//	//게시판 목록 검색
//	@GetMapping("/getBoadListSearch.do")
//	@LoginCheck
//	public String getBoardListSearch(Model model, BoardVO board, HttpServletRequest request) {
//		
//	}
	
	// 상세 목록 
    @GetMapping("/getBoard.do")
    @LoginCheck
    public String getBoard(Model model, BoardVO vo, HttpSession session) {
    	
    	session.setAttribute("boardSeq", vo.getSeq());
    	

        BoardVO board = boardService.getBoard(vo.getSeq());
        model.addAttribute("board", board);
        
        // 댓글 목록 불러오기
        List<CommentVO> comments = commentService.getCommentsByBoardSeq(vo.getSeq());
      
        
        model.addAttribute("comments", comments);
        
        

        return "board/getBoard";
    }
    
	// 글 수정 화면
	
	@PostMapping("/getUpdateBoard.do")
	@LoginCheck
	public String getUpdateBoard(Model model, BoardVO vo, HttpSession session, RedirectAttributes redirectAttributes) {
		MemberVO member = (MemberVO) session.getAttribute("mymember");
		System.out.println(vo.getSeq());
		System.out.println(member.getNickname());
		System.out.println(vo.getWriter());
		
		if (member.getNickname().trim().equals(vo.getWriter().trim())) {
		
		BoardVO board = boardService.getUpdateBoard(vo.getSeq());
		
		
		model.addAttribute("board", board);

		//return "board/getBoard";
		return "board/updateBoard";	
		} else {
			redirectAttributes.addFlashAttribute("updateFailed", "수정 페이지 요청 실패");
			
			return "redirect:getBoard.do?seq="+ session.getAttribute("boardSeq"); 
		}
		
		
	}
	
	
	// 글 수정
	@PostMapping("/updateBoard.do")
	@LoginCheck
	public String updateBoard(BoardVO board) {
		
		System.out.println(board);
		
		boardService.updateService(board);
		
		return "redirect:getBoardList.do";
	}
	
	// 글 삭제
	@GetMapping("/deleteBoard.do")
	@LoginCheck
	public String deleteBoard(BoardVO vo, HttpSession session) {
		
		MemberVO member = (MemberVO) session.getAttribute("mymember");
		
		
		if (member.getNickname().trim().equals(vo.getWriter().trim())) {
			
		boardService.deleteService(vo.getSeq());
		return "redirect:getBoardList.do";
		}else {
			return "redirect:getBoardList.do";
		}
	}
	
	////////////////////////////
	//댓글기능
	////////////////////////////


    // 댓글 등록
	@PostMapping("/addComment.do")
	@LoginCheck
	public String addComment(Model model, CommentVO comment, HttpSession session) {
		
		MemberVO member = (MemberVO)session.getAttribute("mymember");
		
		comment.setWriter(member.getNickname());
		

		
	    commentService.addComment(comment);

	    // 댓글 추가 후 게시글 상세 페이지로 리다이렉트
	    return "redirect:/getBoard.do?seq=" + comment.getBoardSeq();
	}
	
	//대댓글 등록
	@PostMapping("/addReply.do")//상세화면의 대댓글 반영
	@LoginCheck
	public String addReply(Model model, CommentVO comment, HttpSession session) {
		
		MemberVO member = (MemberVO) session.getAttribute("mymember");
		
		comment.setWriter(member.getNickname());
		
		commentService.addReply(comment);
		
		return "redirect:/getBoard.do?seq=" + comment.getBoardSeq();
	}
	

    // 댓글 삭제를 처리하는 메서드 추가
    @GetMapping("/deleteComment.do")
    @LoginCheck
    public String deleteComment(Model model, CommentVO comment, @RequestParam int boardSeq, HttpSession session) {
    	
    	
    	
    	MemberVO member = (MemberVO) session.getAttribute("mymember");
    	
    	if(comment.getWriter().trim().equals(member.getNickname().trim())) {
    		
      
        commentService.deleteComment(comment.getSeq());

        return "redirect:getBoard.do?seq=" + boardSeq;
    	}else {
    		
    		return "redirect:getBoard.do?seq=" + boardSeq;
    	}
    }
	
}
