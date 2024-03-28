package com.springproj.dietwebservice.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.dietwebservice.domain.WorkoutBoardVO;
import com.springproj.dietwebservice.domain.WorkoutInfoVO;
import com.springproj.dietwebservice.repository.IWorkoutDAO;

@Service
public class WorkoutServiceImpl implements WorkoutService {
	@Autowired
	IWorkoutDAO workoutDAO;
	
	@Override
	public List<Map<String, Object>>autocomplete(Map<String, Object> paramMap) throws Exception{
		return workoutDAO.autocomplete(paramMap);
	}
	@Override
	public List<WorkoutBoardVO>getWorkoutBoardByDate(WorkoutBoardVO boardVO) {
		
		return workoutDAO.getWorkoutBoardByDate(boardVO);
	}
	
	@Override
	public List<WorkoutInfoVO> getWorkoutInfo(WorkoutInfoVO infoVO) {
		// TODO Auto-generated method stub
		List<WorkoutInfoVO> workoutInfoVO = workoutDAO.getWorkoutInfo(infoVO);
		
		return workoutInfoVO;
	}

//	@Override
//	public List<WorkoutBoardVO> getWorkOutBoard(WorkoutBoardVO boardVO) {
//		// TODO Auto-generated method stub
//		
//		List<WorkoutBoardVO> workoutBoardVO = workoutDAO.getWorkOutBoard(boardVO);
//		return workoutBoardVO;
//	}
	@Override
	public void insertWorkoutBoard(WorkoutBoardVO boardVO) {
		// TODO Auto-generated method stub
		
		workoutDAO.insertWorkoutBoard(boardVO);
		
	}
	@Override
	public void updateWorkoutBoard(WorkoutBoardVO boardVO) {
		// TODO Auto-generated method stub
		workoutDAO.updateWorkoutBoard(boardVO);
	}
	@Override
	public void deleteWorkoutBoard(int seq) {
		// TODO Auto-generated method stub
		workoutDAO.deleteWorkoutBoard(seq);
	}

}
