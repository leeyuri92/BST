package com.bst.ticket.dao;

import com.bst.ticket.vo.CommunityVO;
import jakarta.persistence.Id;

import java.util.List;
import java.util.Optional;

/**
 * Author: 전수빈
 * Date: 23 Jan
 * Feature: Board Dao
 */
public interface CommunityDao {

    //게시글 목록
    List<CommunityVO> getCommunityBoardList();

    //게시글 조회
    CommunityVO getCommunityBoardById(Integer boardId);

    //게시글 조회수
    public void boardHitUpdate(Integer boardId);
    

}
