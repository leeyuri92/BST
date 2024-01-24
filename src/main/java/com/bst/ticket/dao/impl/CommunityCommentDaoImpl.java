package com.bst.ticket.dao.impl;

import com.bst.ticket.dao.CommunityCommentDao;
import com.bst.ticket.vo.CommunityCommentVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CommunityCommentDaoImpl implements CommunityCommentDao {

    Logger logger = LoggerFactory.getLogger(CommunityDaoImpl.class);

    @Autowired
    SqlSessionTemplate sqlSessionTemplate;

    @Override
    public List<CommunityCommentVO> getCommunityCommentList(Integer boardId) {
        return sqlSessionTemplate.selectList("selectCommentList", boardId);
    }
}
