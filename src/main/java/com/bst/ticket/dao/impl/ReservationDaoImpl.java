package com.bst.ticket.dao.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bst.ticket.dao.ReservationDao;
import com.bst.ticket.service.ReservationService;

@Repository
public class ReservationDaoImpl implements ReservationDao{
  Logger logger = LoggerFactory.getLogger(ReservationService.class);

  @Autowired
  SqlSessionTemplate sqlSessionTemplate;

  @Override
  public List<Map<String, Object>> ticketList(List<Map<String, Object>> pmap) throws Exception {
    
    return null;
  }
}
