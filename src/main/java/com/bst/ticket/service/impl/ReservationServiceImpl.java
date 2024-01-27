package com.bst.ticket.service.impl;

import java.util.List;
import java.util.Map;

import com.bst.ticket.vo.ReservationVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bst.ticket.dao.ReservationDao;
import com.bst.ticket.service.ReservationService;

@Service
public class ReservationServiceImpl implements ReservationService{
  Logger logger = LoggerFactory.getLogger(ReservationServiceImpl.class);

  @Autowired
  private ReservationDao reservationDao;

  @Override
  public List<Map<String, Object>> reserveList(Map<String, Object> mmap) throws Exception {
    logger.info("Service : reserveList 호출");

    return reservationDao.reserveList(mmap);
  }

  @Override
  public int ticketReservation(Map<String,Object> tmap) throws Exception {
    logger.info("Service : reserveList 호출");
    return reservationDao.ticketReservation(tmap);
  }
}
