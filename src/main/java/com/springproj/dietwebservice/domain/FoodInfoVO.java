package com.springproj.dietwebservice.domain;

import lombok.Data;

@Data
public class FoodInfoVO {

		   private int seq;//음식번호
		   private String food_name;//음식이름
		   private int gram;//그램수
		   private int kcal; //칼로리
		}
