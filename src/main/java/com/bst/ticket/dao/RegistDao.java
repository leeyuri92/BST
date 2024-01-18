package com.bst.ticket.dao;

import java.util.Map;

public interface RegistDao {

     /*
    작성자 : 이동건
    작성일자 : 24.01.18
    기능 : 회원가입(RegistDao)
    */
  public int Regist(Map<String, Object> mmap) throws Exception;
  
}
