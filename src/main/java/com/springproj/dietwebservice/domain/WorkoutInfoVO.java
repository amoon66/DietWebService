package com.springproj.dietwebservice.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class WorkoutInfoVO {
	private String	name;
	private int		min;
	private int		kcal;
	private String  searchKeyword;
	

}
