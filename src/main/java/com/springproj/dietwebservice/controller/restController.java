package com.springproj.dietwebservice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.springproj.dietwebservice.domain.MemberVO;
import com.springproj.dietwebservice.service.MemberService;

@RestController
public class restController {
	
	@Autowired
	private MemberService memberService;
	
	// 아이디 중복 확인
    @PostMapping("/checkDuplicateId")
    public int checkDuplicateId(@RequestBody MemberVO vo) {
        String id = vo.getId();
        System.out.println(id);
        return memberService.isDuplicateId(id);
    }
}
