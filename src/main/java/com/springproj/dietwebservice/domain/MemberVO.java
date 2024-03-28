package com.springproj.dietwebservice.domain;

import lombok.Data;

@Data
public class MemberVO {
	   private String id;//아이디
	   private String password;//비밀번호
	   private String name;//이름
	   private String role;//권한
	   private String phone; //폰번호
	   private int tall; //키
	   private String nickname; //별명
	}
