package com.bst.ticket.dao;

import java.util.List;
import java.util.Map;

public interface ReservationDao {

  public List<Map<String,Object>> ticketList(List<Map<String, Object>> pmap) throws Exception;
} 