package com.bst.ticket.dao.impl;

import java.util.List;
import java.util.Map;

import com.bst.ticket.vo.CommunityVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bst.ticket.dao.CommunityDao;

@Repository
public class CommunityDaoImpl implements CommunityDao {
    Logger logger = LoggerFactory.getLogger(CommunityDaoImpl.class);

    @Autowired
    SqlSessionTemplate sqlSessionTemplate;

    @Override
    public List<CommunityVO> getCommunityBoardList() {
        return sqlSessionTemplate.selectList("selectBoard");
    }

    @Override
    public CommunityVO getCommunityBoardById(Integer boardId) {
        return sqlSessionTemplate.selectOne("getCommunityBoardById", boardId);
    }

    @Override
    public void boardHitUpdate(Integer boardId) {
        sqlSessionTemplate.update("boardHitsUpdate", boardId);
    }

    @Override
    public void saveCommunityBoard(Map<String, CommunityVO> boardMap) {
        sqlSessionTemplate.insert("saveCommunityBoard", boardMap);
    }


}
