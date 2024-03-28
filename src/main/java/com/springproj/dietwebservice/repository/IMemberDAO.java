package com.springproj.dietwebservice.repository;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.springproj.dietwebservice.domain.MemberVO;

@Mapper
public interface IMemberDAO {
	public MemberVO getMember(MemberVO vo);
	public void MemberJoin(MemberVO vo);
	// 아이디 중복 확인
    public int isDuplicateId(String id);
    public void updateMypage(MemberVO vo);
    public MemberVO findUsername(String fullName, String phoneNumber); //아이디& 비번찾기
    public MemberVO getMypageById(MemberVO vo);
    public boolean deleteMember(String id,String password);
}
