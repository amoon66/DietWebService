package com.springproj.dietwebservice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.dietwebservice.domain.BoardVO;
import com.springproj.dietwebservice.repository.IBoardDAO;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private IBoardDAO boardDAO;

	@Override
	public void insertService(BoardVO board) {
		
		
		boardDAO.insertBoard(board);
		
	}
	@Override
	public int getListCount() {
		
		int count = boardDAO.getListCount();
		
		return count;
	}

	@Override
	public List<BoardVO> getBoardList(BoardVO vo, int page, int limit) {
		
		int startrow = (page-1)*10+1; //읽기 시작할 row 번호.
		int endrow = startrow+limit-1; //읽을 마지막 row 번호.	
		
		vo.setStartrow(startrow);
		vo.setEndrow(endrow);
		
		
		List<BoardVO> list = boardDAO.getBoardList(vo);
		
//		for(BoardVO board: list) {
//			System.out.println(board);
//		}
		return list;
	}

	@Override
	public BoardVO getBoard(int seq) {
		 BoardVO board = boardDAO.getBoard(seq);
		 				 boardDAO.updateCnt(seq);
		 return board;
	}
	
	public BoardVO getUpdateBoard(int seq) {
		 BoardVO board = boardDAO.getUpdateBoard(seq);
		 
		return board;
	}	
	
	


	@Override
	public void updateService(BoardVO board) {
		boardDAO.updateBoard(board);
	}

	@Override
	public void deleteService(int seq) {
		boardDAO.deleteBoard(seq);
		
	}

}
