package com.bst.ticket.dao;

import java.util.List;
import java.util.Map;

public interface NoticeDao {


  public List<Map<String, Object>> noticeListINFO(Map<String, Object> pmap)throws Exception;

  public Map<String, Object> getNoticeDetail(int ntc_id) throws Exception;

  }
