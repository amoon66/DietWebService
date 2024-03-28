package com.springproj.dietwebservice.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.springproj.dietwebservice.domain.FoodInfoVO;

@Mapper
public interface IFoodInfoDAO {
	public List<FoodInfoVO> findfoodinfo(String searchText);
}
