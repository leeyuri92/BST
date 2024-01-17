package com.bst.ticket.service;

import java.util.List;
import java.util.Map;

public interface ReservationService {

  List<Map<String,Object>> reserveList(Map<String, Object> mmap) throws Exception;
}
