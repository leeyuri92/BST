package com.bst.ticket.dao;

import com.bst.ticket.vo.CommunityCommentVO;

import java.util.List;

public interface CommunityCommentDao {
    List<CommunityCommentVO> getCommunityCommentList(Integer boardId);
}
