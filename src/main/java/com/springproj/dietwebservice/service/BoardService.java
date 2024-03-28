package com.springproj.dietwebservice.service;

import java.util.List;

import com.springproj.dietwebservice.domain.BoardVO;

public interface BoardService {
	public void insertService(BoardVO board);
	public List<BoardVO> getBoardList(BoardVO board, int page, int limit);
	public int getListCount();
	public BoardVO getBoard(int seq);
	public void updateService(BoardVO board);
	public void deleteService(int seq); 
	public BoardVO getUpdateBoard(int seq);

}
