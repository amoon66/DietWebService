package com.springproj.dietwebservice.service;

import java.util.List;
import java.util.Map;

import com.springproj.dietwebservice.domain.WorkoutBoardVO;
import com.springproj.dietwebservice.domain.WorkoutInfoVO;

public interface WorkoutService {
	public List<WorkoutInfoVO> getWorkoutInfo(WorkoutInfoVO infoVO);
//	public List<WorkoutBoardVO> getWorkOutBoard(WorkoutBoardVO boardVO);
	List<Map<String, Object>>autocomplete(Map<String, Object> paramMap) throws Exception;
	List<WorkoutBoardVO>getWorkoutBoardByDate(WorkoutBoardVO boardVO) throws Exception;
	public void insertWorkoutBoard(WorkoutBoardVO boardVO);
	public void updateWorkoutBoard(WorkoutBoardVO boardVO);
	public void deleteWorkoutBoard(int seq);

}
