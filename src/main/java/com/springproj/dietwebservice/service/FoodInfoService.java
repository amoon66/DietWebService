package com.springproj.dietwebservice.service;

import java.util.List;

import com.springproj.dietwebservice.domain.FoodInfoVO;

public interface FoodInfoService {
	public List<FoodInfoVO> findfoodinfo(String searchText);
}
