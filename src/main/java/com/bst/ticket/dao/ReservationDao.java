package com.bst.ticket.dao;

import java.util.List;
import java.util.Map;

public interface ReservationDao {

  List<Map<String,Object>> reserveList(Map<String, Object> mmap) throws Exception;

}
