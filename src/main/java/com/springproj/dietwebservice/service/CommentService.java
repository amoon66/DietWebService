package com.springproj.dietwebservice.service;

import java.util.List;

import com.springproj.dietwebservice.domain.CommentVO;

public interface CommentService {    
    public void addComment(CommentVO comment);
    public void addReply(CommentVO comment);
    public List<CommentVO> getCommentsByBoardSeq(int boardSeq);
    public void deleteComment(int commentId);
}
