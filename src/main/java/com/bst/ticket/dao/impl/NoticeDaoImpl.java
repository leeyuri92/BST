package com.bst.ticket.dao.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bst.ticket.dao.NoticeDao;

@Repository
public class NoticeDaoImpl implements NoticeDao{
  @Autowired
  SqlSessionTemplate sqlSessionTemplate;

  @Override
  public List<Map<String, Object>> noticeList(List<Map<String, Object>> pmap) throws Exception {
  
    return null;
  }
}
