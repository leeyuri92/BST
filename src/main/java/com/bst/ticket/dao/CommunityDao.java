package com.bst.ticket.dao;

import com.bst.ticket.vo.CommunityVO;

import java.util.List;
import java.util.Optional;

public interface CommunityDao {

    //게시글 목록
    List<CommunityVO> getCommunityBoardList();

    CommunityVO getCommunityBoardById(Integer boardId);

    //게시글 조회
    
}
