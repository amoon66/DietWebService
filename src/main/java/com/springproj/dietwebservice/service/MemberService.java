package com.springproj.dietwebservice.service;


import com.springproj.dietwebservice.domain.MemberVO;

public interface MemberService {

	MemberVO getMember(MemberVO vo);
	//회원가입
	public void MemberJoin(MemberVO vo);
	// 아이디 중복 확인
	int isDuplicateId(String id);
	public void updateMypage(MemberVO vo);
	MemberVO findUsername(String fullName, String phoneNumber); // 아이디 찾기 
	public MemberVO getMypageById(MemberVO vo);
	public boolean deleteMember(String id,String password);
}