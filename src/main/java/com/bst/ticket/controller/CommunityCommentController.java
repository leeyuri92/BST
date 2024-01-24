package com.bst.ticket.controller;

import com.bst.ticket.dao.CommunityCommentDao;
import com.bst.ticket.vo.CommunityCommentVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class CommunityCommentController {
    Logger logger = LoggerFactory.getLogger(CommunityController.class);

    @Autowired
    private CommunityCommentDao communityCommentDao;

    public CommunityCommentController(CommunityCommentDao communityCommentDao) {
        this.communityCommentDao = communityCommentDao;
    }

    /**
     * Author: 전수빈
     * Date: 24 Jan
     * Feature: Community Board Comment
     */
    // 댓글 작성
    // 댓글 삭제
    // 댓글 수정

}
