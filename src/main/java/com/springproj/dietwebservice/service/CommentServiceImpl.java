package com.springproj.dietwebservice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.dietwebservice.domain.CommentVO;
import com.springproj.dietwebservice.repository.ICommentDAO;

@Service
public class CommentServiceImpl implements CommentService {
	
	@Autowired
	private ICommentDAO iCommentDAO;
	
	//댓글달기
	@Override
	public void addComment(CommentVO comment) {//ref는 seq값 rep_lev과 rep_seq값은 0으로 전달
		// TODO Auto-generated method stub
		iCommentDAO.insertComment(comment);
		iCommentDAO.updateRep_ref(comment);
	}
	
	//대댓글 달기
	@Override
	public void addReply(CommentVO comment) {//ref 값은 seq값, rep_lev은 + 1, rep_seq값은 가장 큰 값을 불러와서 + 1 이후에 올림차순으로 정렬
		int lev = comment.getRep_lev();
		
		comment.setRep_lev(++lev);
		
		int maxRep_seq = iCommentDAO.getMaxRep_seq(comment);	// getMax_seq(comment)로 꺼내오는 반환형이 null?	
			
		
		comment.setRep_seq(++maxRep_seq);
			
//		System.out.println("서비스단 가공된 comment : " + comment);
		
		iCommentDAO.insertReply(comment);			
		
	}
	

	@Override
	public List<CommentVO> getCommentsByBoardSeq(int boardSeq) {
		// TODO Auto-generated method stub
		
//		System.out.println("서비스단의 boardSeq : " + boardSeq);
		 List<CommentVO> list = iCommentDAO.getCommentsByBoardSeq(boardSeq);
		 		
		 
		 return list;
	}


	@Override
	public void deleteComment(int seq) {
		// TODO Auto-generated method stub
		iCommentDAO.deleteComment(seq);

	}

}
