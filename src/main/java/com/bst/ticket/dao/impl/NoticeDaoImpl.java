package com.bst.ticket.dao.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bst.ticket.dao.NoticeDao;

@Repository
public class NoticeDaoImpl implements NoticeDao {

    Logger logger = LoggerFactory.getLogger(NoticeDaoImpl.class);

    @Autowired
    SqlSessionTemplate sqlSessionTemplate;

    @Override //noticeINFOSelect DAO부분설게
    public List<Map<String, Object>> noticeListINFO(Map<String, Object> pmap) {
        List<Map<String, Object>> list = sqlSessionTemplate.selectList("noticeListINFO", pmap);
        return list;
    }

    @Override
    public List<Map<String, Object>> noticeListContent(Map<String, Object> cmap) {
        List<Map<String, Object>> list2 = sqlSessionTemplate.selectList("noticeListContent",cmap);
        logger.info(list2.toString());
        return list2;
    }
}
