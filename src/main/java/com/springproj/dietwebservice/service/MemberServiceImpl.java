package com.springproj.dietwebservice.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springproj.dietwebservice.domain.MemberVO;
import com.springproj.dietwebservice.repository.IMemberDAO;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private IMemberDAO memberDAO;
	
	@Override
	public MemberVO getMember(MemberVO vo) {
		
		return memberDAO.getMember(vo);
	}
	@Override
	public void MemberJoin(MemberVO vo) {
		
		memberDAO.MemberJoin(vo);
	}
	@Override
    public int isDuplicateId(String id) {
		System.out.println("dao id값"+id);
        return memberDAO.isDuplicateId(id);
    }
	@Override
	public void updateMypage(MemberVO vo) {
		memberDAO.updateMypage(vo);
	}
	@Override
	public MemberVO getMypageById(MemberVO vo) {
		return memberDAO.getMypageById(vo);
	}
	@Override
	public boolean deleteMember(String id,String password) {
		return memberDAO.deleteMember(id,password);
	}
	
	//은주씨 작업물 -------------------
	@Override
	   public MemberVO findUsername(String fullName, String phoneNumber) {
	       System.out.println("service " + fullName);
	       return memberDAO.findUsername(fullName, phoneNumber);
	}

}
