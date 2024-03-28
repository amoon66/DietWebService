package com.springproj.dietwebservice.domain;





import java.sql.Date;

import lombok.Data;

@Data
public class WorkoutBoardVO {
		private String seq;
		private String id;
		private String workoutName;
		private int inputTime;
		private int kcal;
		private Date regDate;
	
}
