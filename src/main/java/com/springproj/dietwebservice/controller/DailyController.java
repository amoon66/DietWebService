package com.springproj.dietwebservice.controller;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springproj.dietwebservice.annotation.LoginCheck;
import com.springproj.dietwebservice.domain.FoodInfoVO;
import com.springproj.dietwebservice.domain.MemberVO;
import com.springproj.dietwebservice.domain.WorkoutBoardVO;
import com.springproj.dietwebservice.domain.WorkoutInfoVO;
import com.springproj.dietwebservice.service.FoodInfoService;
import com.springproj.dietwebservice.service.WorkoutService;

import jakarta.servlet.http.HttpSession;

@Controller
public class DailyController {
	@Autowired
	private FoodInfoService foodinfoService;
	@Autowired
	private WorkoutService workoutService;

	@GetMapping("/insertDailyFood.do")
	@LoginCheck
	public String getDailyFood() {

		return "daily/dailyFood";
	}

	// 식단 창에서 입력/수정 버튼 클릭 시 이동 메서드
	@GetMapping("/dailyinsertfood.do")
	@LoginCheck
	public String DailyinsertFood() {
//		System.out.println("dailyinsertfood");

		return "daily/dailyinsertfood";
	}

	@PostMapping("/search")
	@ResponseBody
	public List<FoodInfoVO> searchFood(@RequestParam String searchText, Model model) {
//		System.out.println("searchText 값 출력 =" + searchText);
		List<FoodInfoVO> foodlist = foodinfoService.findfoodinfo(searchText);

		model.addAttribute("foodList", foodlist);
//		System.out.println(foodlist);

		return foodlist;
	}

	// DailyWorkout로 이동
	@GetMapping("/getDailyWorkout.do")
	@LoginCheck
	public String getDailyWorkout() {

		return "daily/dailyWorkout";
	}

	// 검색 자동완성기능
	@PostMapping("autocomplete.do")
	public @ResponseBody Map<String, Object> autocomplete(@RequestParam Map<String, Object> paramMap) throws Exception {
//		System.out.println("Ajax동작확인");
//		System.out.println(paramMap);
		List<Map<String, Object>> resultList = workoutService.autocomplete(paramMap);

		paramMap.put("resultList", resultList);

		return paramMap;
	}

	// 날짜 입력으로 workoutBoard Ajax로 불러오기
	@PostMapping("getWorkoutBoardByDate.do")
	public @ResponseBody List<WorkoutBoardVO> getWorkoutBoardBydate(@RequestParam Date date , HttpSession session) throws Exception {//		System.out.println(date); //2024-02-14
				
//		System.out.println("진입성공");
		MemberVO member = (MemberVO) (session.getAttribute("mymember"));
		WorkoutBoardVO boardVO = new WorkoutBoardVO();				
		
		boardVO.setRegDate(date);
		boardVO.setId(member.getId());
		
//		System.out.println(boardVO);
		List<WorkoutBoardVO> boardList = workoutService.getWorkoutBoardByDate(boardVO);
		
//		System.out.println(boardList);


		return boardList;
	}

	// DailyWorkout에서 WorkoutBoard 페이지로 이동 및 검색버튼 클릭시
	@GetMapping("/getDailyWorkoutBoard.do")
	@LoginCheck
	public String getDailyWorkoutBoard(Model model, WorkoutInfoVO infoVO, WorkoutBoardVO boardVO, HttpSession session) {

		if (infoVO.getSearchKeyword() == null || infoVO.getSearchKeyword() == "") {
			infoVO.setSearchKeyword("입력받지않음");
		}



		// WorkoutInfo에서 데이타 가져오기
		List<WorkoutInfoVO> workoutInfoVO = workoutService.getWorkoutInfo(infoVO);
		model.addAttribute("workoutInfo", workoutInfoVO);


		MemberVO member = (MemberVO) (session.getAttribute("mymember"));
		boardVO.setId(member.getId());

//		System.out.println(boardVO);
//		List<WorkoutBoardVO> workoutBoardVO = workoutService.getWorkOutBoard(boardVO);
//		model.addAttribute("workoutBoard", workoutBoardVO);

		return "daily/dailyWorkoutBoard";
	}

	// WorkoutBoard에서 등록 시
	@PostMapping("insertWorkoutBoard.do")
	@LoginCheck
	public @ResponseBody Map<String, String> insertWorkoutBoard(@RequestBody WorkoutBoardVO boardVO, HttpSession session) {
		MemberVO member = (MemberVO) (session.getAttribute("mymember"));
		String res = "성공";
		
		boardVO.setId(member.getId());
//		System.out.println(boardVO);
		
		workoutService.insertWorkoutBoard(boardVO);
		
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("res", res);
		return map;
		
	}
	
	// WorkoutBoard에서 업데이트 시
	@PostMapping("updateWorkoutBoard.do")
	@LoginCheck
	public @ResponseBody Map<String, String> updateWorkoutBoard(@RequestBody WorkoutBoardVO boardVO) {
		
		String res ="성공";
		
		System.out.println(boardVO);
		workoutService.updateWorkoutBoard(boardVO);
		
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("res", res);
		return map;	
	}

	// WorkoutBoard 에서 삭제 시
	@PostMapping("/deleteWorkoutBoard.do")
	@LoginCheck
	public @ResponseBody Map<String, String> deleteDailyWorkout(@RequestParam int seq) {		
		
		
		String res = "성공";
		

		workoutService.deleteWorkoutBoard(seq);
		
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("res", res);
		return map;
	}

	@GetMapping("/insertDailyDiary.do")
	@LoginCheck
	public String getDailyDiary() {

		return "daily/dailyDiary";
	}

	@GetMapping("/insertDailyWeight.do")
	@LoginCheck
	public String getDailyWeight() {

		return "daily/dailyWeight";
	}

//	@PostMapping("/workoutsearch")
//	public String searchworkout(@RequestParam String searchText,Model model) {
//		System.out.println("searchworkout메서드 실행");
//		System.out.println("searchText 값 출력 =" + searchText);
//		WorkoutVO workoutlist = workoutService.findworkoutinfo(searchText);
//		
//		model.addAttribute("workoutlist" , workoutlist);
//		
//		return "daily/dailyinsertworkout";
//	}
}
