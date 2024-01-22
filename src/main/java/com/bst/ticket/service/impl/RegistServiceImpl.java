 
 package com.bst.ticket.service.impl;

 import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
 import org.springframework.stereotype.Service;

import com.bst.ticket.dao.RegistDao;
import com.bst.ticket.service.RegistService;

@Service
public class RegistServiceImpl implements RegistService{
    Logger logger = LoggerFactory.getLogger(RegistServiceImpl.class);

  @Autowired
  private RegistDao registDao;
 /*ex)
    작성자 : 이동건
    작성일자 : 24.01.18
    기능 : 회원가입(RegistServiceImpl)
    */

  @Override
  public int Regist(Map<String, Object> pmap) throws Exception {
    logger.info("RegistServiceImpl : Regist 호출");
    int result = 0;
    result = registDao.Regist(pmap);
    return result;
  }
}