package com.springproj.dietwebservice.repository;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.springproj.dietwebservice.domain.CommentVO;

@Mapper
public interface ICommentDAO {
    public void insertComment(CommentVO comment);
    public void updateRep_ref(CommentVO comment);
    public int getMaxRep_seq(CommentVO comment);
    public void insertReply(CommentVO comment);
    public List<CommentVO> getCommentsByBoardSeq(int boardSeq);//출력 수정 해야함
    public void deleteComment(int commentId);
}
