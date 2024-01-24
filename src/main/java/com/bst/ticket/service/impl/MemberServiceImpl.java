package com.bst.ticket.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bst.ticket.dao.MemberDao;
import com.bst.ticket.service.MemberService;

@Service
public class MemberServiceImpl implements MemberService{
  Logger logger = LoggerFactory.getLogger(MemberServiceImpl.class);

  @Autowired
  private MemberDao memberDao;

  /*ex)
    작성자 : 홍길동
    작성일자 : 24.01.12
    기능 : 회원조회(service)
  */
  @Override
  public List<Map<String, Object>> memberList(Map<String, Object> mmap) throws Exception {
    logger.info("Service : memberList 호출");
    List<Map<String,Object>> mList = memberDao.memberList(mmap);
    return mList;
  }

  @Override
  public int checkPwd(String inputPassword, Map<String, Object> mbr_seq) throws Exception {
    logger.info("Service : checkPwd 호출");
    if(inputPassword.equals(memberDao.checkPwd(mbr_seq))){
      return 1;
    }else{
      return 0;
    }
  }
}
