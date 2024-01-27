package com.bst.ticket.service;

import com.bst.ticket.vo.ReservationVO;

import java.util.List;
import java.util.Map;

public interface ReservationService {

  List<Map<String,Object>> reserveList(Map<String, Object> mmap) throws Exception;

  int ticketReservation(Map<String,Object> tmap)throws Exception;
}
