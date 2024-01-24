package com.bst.ticket.dao;

import com.bst.ticket.vo.CommunityVO;

import java.util.List;
import java.util.Map;

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

    //게시글 작성
    void saveCommunityBoard(Map<String, CommunityVO> boardMap);

    //게시글 삭제
    void deleteCommunityBoard(Integer boardId);

    //게시글 수정
    void updateCommunityBoard(CommunityVO tempBoard);

}
