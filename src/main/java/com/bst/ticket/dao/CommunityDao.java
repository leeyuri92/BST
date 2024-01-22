package com.bst.ticket.dao;

import com.bst.ticket.vo.CommunityVO;

import java.util.List;

public interface CommunityDao {

    //게시글 목록
    List<CommunityVO> getCommunityBoardList();
}
