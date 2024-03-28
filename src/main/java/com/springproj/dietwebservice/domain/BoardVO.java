package com.springproj.dietwebservice.domain;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class BoardVO {
	private int		seq;
	private String	title;
	private String	writer;
	private String	content;
	private Date	regDate;
	private int 	cnt;
	private MultipartFile uploadFile; // 파일 첨부 기능 추가
	private String  fileName;
	private String	searchCondition;
	private String	searchKeyword;
	private int startrow;
	private int endrow;
}
