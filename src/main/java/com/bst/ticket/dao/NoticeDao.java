package com.bst.ticket.dao;

import java.util.List;
import java.util.Map;

public interface NoticeDao {

  public List<Map<String,Object>> noticeList(List<Map<String, Object>> pmap) throws Exception;

  }
