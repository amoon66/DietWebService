package com.springproj.dietwebservice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.origin.SystemEnvironmentOrigin;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springproj.dietwebservice.annotation.LoginCheck;
//import com.springproj.dietwebservice.annotation.LoginCheck;
import com.springproj.dietwebservice.domain.MemberVO;
import com.springproj.dietwebservice.service.MemberService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {
	@Autowired
	private MemberService memberService;

	// 홈 화면
//	@GetMapping("/")
//	public String start() {
//
//		return "index";
//	}

	
	//로그인이 되어있으면 바로 home으로 가도록 처리
	@GetMapping("/")
	public String start(HttpSession session) {
		
		if(session.getAttribute("mymember") != null) {
			return "member/home";
			
		} else {
			return "index";
		}
	}

	// 로그인 화면
	@GetMapping("/login")
	public String loginForm() {

		return "member/login";
	}

	@PostMapping(value = "/login.me")
	   public String loginProc(MemberVO vo, HttpSession session, Model model) {
		
			//System.out.println(vo);

	      if (vo.getId() == null || vo.getId().equals("")) {
	         throw new ArithmeticException("아이디는 반드시 입력해야 합니다.");
	      }

	      String retVal = null;

	      MemberVO user = memberService.getMember(vo);

	      if ((user != null) && (user.getPassword().equals(vo.getPassword()))) {
	         session.setAttribute("mymember", vo);
	         MemberVO mymember = (MemberVO) session.getAttribute("mymember");

	         MemberVO mymemberDB = memberService.getMypageById(mymember);
//	         System.out.println("회원정보: "+ mymemberDB);
	         session.setAttribute("mymember", mymemberDB);
	         retVal = "redirect:home";

	      } else {
	    	  model.addAttribute("loginFailed", Boolean.TRUE);
	         retVal = "redirect:login";
	         
	      }

	      return retVal;
	   }

	// 로그 아웃
	@LoginCheck
	@RequestMapping("/logout.me")
	public String logoutProc(HttpSession session) {

		session.invalidate();

		return "member/login";

	}

	// 회원가입
	@RequestMapping("/signup.me")
	public String SignupForm() {
		return "member/signup";
	}

	// 마이페이지 이동 컨트롤러
	@LoginCheck
	@GetMapping("/getMyPage.do")
	public String myPage(MemberVO vo, HttpSession session, Model model) {
		// 세션에서 회원 정보 가져오기
		MemberVO mymember = (MemberVO) session.getAttribute("mymember");

		if (mymember != null) {
			MemberVO mymemberDB = memberService.getMypageById(mymember);
			model.addAttribute("mymember", mymemberDB);
		} else {
			return "redirect:/login";
		}

		return "member/mypage";

	}
	//업데이트 마이페이지
	@LoginCheck
	@PostMapping("/updateMypage")
	public String updateMypage(MemberVO vo, HttpSession session) {
		MemberVO mymember = (MemberVO) session.getAttribute("mymember");
		System.out.println("업데이트 마이페이지 메서드 실행");
		// 입력한 ID와 세션에서 가져온 회원 정보의 ID를 비교
		if (mymember != null && mymember.getId().equals(vo.getId())) {
			try {
				memberService.updateMypage(vo);
				session.setAttribute("mymember", mymember);

				return "redirect:/getMyPage.do";
			} catch (Exception e) {
				// memberService.updateMypage에서 예외 발생시 처리
				e.printStackTrace();
				// 적절한 에러 페이지로 리다이렉트 또는 예외 처리
				return "redirect:/login.me";
			}
		} else {
			// ID가 일치하지 않으면 다른 페이지로 리다이렉트 또는 에러 처리
			return "redirect:/login.me"; // 에러 페이지로 리다이렉트
		}
	}

	// 회원가입 처리
	@RequestMapping("/signup")
	public String SignupProcess(MemberVO vo, HttpServletRequest request, HttpSession session) {

		String retVal = "redirect:login";
		System.out.println(vo);
		try {
			memberService.MemberJoin(vo);

			// 로그인 성공 시 세션에 회원 정보 저장
			// session.setAttribute("mymember", vo);
		} catch (IllegalArgumentException e) {
			// 서비스 계층에서 발생한 IllegalArgumentException은 그대로 전파
			throw e;
		} catch (Exception e) {
			// 그 외의 예외는 로깅 후 전역 예외 처리기에게 전파
			retVal = "redirect:signup";
			throw new RuntimeException("회원가입에 실패했습니다.", e);
		}

		return retVal;
	}

	// -------------------------은주씨 작업물 ----------------------
	// 아이디 & 비밀번호찾기 폼
	@GetMapping("/finduseridpw")
	public String showFindUseid() {
		return "member/finduseridpw";

	}

	// 아이디 & 비밀번호 찾기 처리
	@PostMapping("/findusername")
	public String findUsername(@RequestParam("fullName") String fullName,
			@RequestParam("phoneNumber") String phoneNumber, Model model) {
		try {
			
			System.out.println(fullName);
			System.out.println(phoneNumber);
			
			MemberVO findUserIdResult = memberService.findUsername(fullName, phoneNumber);

			System.out.println(findUserIdResult);
			// 여기에 성공적으로 아이디를 찾았을 때의 로직 추가
			if (findUserIdResult != null) {
				model.addAttribute("member", findUserIdResult);
				return "member/findusername";
			} else {
				return "member/notfoundid";
			}

		} catch (Exception e) {
			// 예외 처리 로직
			e.printStackTrace();
			return "member/error";

		}
	}

	// 회원탈퇴 페이지
	@LoginCheck
	@GetMapping("/deleteMember")
	public String deleteMemberForm() {
		System.out.println("회원탈퇴 메서드 실행");
		return "member/deletemember";
	}

	// 회원탈퇴 프로세서
	@PostMapping("/deleteproc.do")
	public String deleteMember(@RequestParam("id") String id, @RequestParam("password") String password, HttpSession session) {
		try {
			if (memberService.deleteMember(id, password)) {
				// 삭제 성공
				session.invalidate();
				return "member/successdeletemember";
			} else {
				// 삭제 실패
				return "member/falsedeletemember";
			}
		} catch (Exception e) {
			// 예외 발생 처리
			e.printStackTrace();
			return "member/falsedeletemember";
		}
	}

	// 홈페이지 메인 폼
	@LoginCheck
	@GetMapping("/home")
	public String mainHome(HttpSession session) {
		 
		
		return "member/home";
	}

}
