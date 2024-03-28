package com.springproj.dietwebservice.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.springproj.dietwebservice.domain.BoardVO;

@Mapper
public interface IBoardDAO {
	public void insertBoard(BoardVO board);
	public int getListCount();
	public List<BoardVO> getBoardList(BoardVO board);
	public BoardVO getBoard(int seq);
	public void updateBoard(BoardVO Board);
	public BoardVO getUpdateBoard(int seq);
	public void deleteBoard(int seq);
	public void updateCnt(int seq);
}
