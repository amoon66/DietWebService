package com.springproj.dietwebservice.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class CommentVO {
    private int seq;
    private String writer;
    private String content;
    private Date regDate;
    private int boardSeq;  // 게시물과 댓글 간의 연관성을 나타내는 필드
    private int rep_ref; // seq값과 동일하면 그룹핑하는 기준값이 됨
    private int rep_lev; // rep_lev의 값에 따라 depth의 값이 정해짐
    private int rep_seq; // rep_ref를 기준으로하는 그룹의 출력 순서
}
