package com.springproj.dietwebservice.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.springproj.dietwebservice.domain.WorkoutBoardVO;
import com.springproj.dietwebservice.domain.WorkoutInfoVO;

@Mapper
public interface IWorkoutDAO {
	
	public List<WorkoutInfoVO> getWorkoutInfo(WorkoutInfoVO infoVO);	
//	public List<WorkoutBoardVO> getWorkOutBoard(WorkoutBoardVO boardVO);
	List<Map<String, Object>>autocomplete(Map<String, Object> paramMap) throws Exception;
	List<WorkoutBoardVO>getWorkoutBoardByDate(WorkoutBoardVO boardVO);
	public void insertWorkoutBoard(WorkoutBoardVO boardVO);
	public void updateWorkoutBoard(WorkoutBoardVO boardVO);
	public void deleteWorkoutBoard(int seq);
}
