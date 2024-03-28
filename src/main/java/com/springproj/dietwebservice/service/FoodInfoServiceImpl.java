package com.springproj.dietwebservice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.dietwebservice.domain.FoodInfoVO;
import com.springproj.dietwebservice.repository.IFoodInfoDAO;

@Service
public class FoodInfoServiceImpl implements FoodInfoService{
	@Autowired
	private IFoodInfoDAO foodDAO;
	
	public List<FoodInfoVO> findfoodinfo(String searchText) {
		System.out.println("searchText: " + searchText);
		return foodDAO.findfoodinfo(searchText);
	}
}
