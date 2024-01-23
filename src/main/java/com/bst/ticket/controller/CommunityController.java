package com.bst.ticket.controller;

import com.bst.ticket.dao.CommunityDao;
import com.bst.ticket.vo.CommunityVO;
import jakarta.persistence.criteria.CriteriaBuilder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import com.bst.ticket.service.CommunityService;
import org.springframework.web.servlet.ModelAndView;

import javax.swing.plaf.ComponentUI;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Controller
@RequestMapping("/community")
public class CommunityController {
    Logger logger = LoggerFactory.getLogger(CommunityController.class);

    @Autowired
    private CommunityService communityService;

    @Autowired
    private CommunityDao communityDao;

    public CommunityController(CommunityService communityService, CommunityDao communityDao) {
        this.communityService = communityService;
        this.communityDao = communityDao;
    }

    /*
    Author: 전수빈
    Data: 22 Jan
    Feature: Community board
     */
    //게시글 리스트
    @GetMapping("/list")
    public ModelAndView CommunityboardList() {
        ModelAndView mav = new ModelAndView("community");
        List<CommunityVO> communityBoardList = communityDao.getCommunityBoardList();
        mav.addObject("communityBoardList", communityBoardList);
        return mav;
    }

    //게시글 조회
    @GetMapping("/list/view/{boardId}")
    public ModelAndView getCommunityBoard(@PathVariable("boardId") Integer boardId) {
        ModelAndView mav = new ModelAndView("communityBoardDetail");
        CommunityVO communityBoard = communityDao.getCommunityBoardById(boardId);
        if (communityBoard != null) {
            logger.info("Board title={}, content={}, hit={}", communityBoard.getBoardTitle(),
                    communityBoard.getBoardContent(), communityBoard.getBoardHit());
            communityDao.boardHitUpdate(boardId);
            mav.addObject("communityBoard", communityBoard);
        }
        return mav;
    }

    //게시글 작성폼
    @GetMapping("/writeform")
    public String communityBoardForm() {
        logger.info("Community Board Write Form");
        return "communityBoardWriteForm";
    }

    //게시글 작성
    @PostMapping("/write")
    public String saveCommunityBoard(@RequestParam Map<String, CommunityVO> boardMap) {
        logger.info("Board title={}, content={}", boardMap.get("boardTitle"), boardMap.get("boardContent"));
        communityDao.saveCommunityBoard(boardMap);
        return "redirect:/community/list";
    }

    //게시글 수정
    //게시글 삭제


}
