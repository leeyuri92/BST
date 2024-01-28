package com.bst.ticket.dao.impl;

import java.util.List;
import java.util.Map;

import com.bst.ticket.vo.ReservationVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bst.ticket.dao.ReservationDao;

@Repository
public class ReservationDaoImpl implements ReservationDao{
  Logger logger = LoggerFactory.getLogger(ReservationDaoImpl.class);

  @Autowired
  SqlSessionTemplate sqlSessionTemplate;

  @Override
  public List<Map<String, Object>> reserveList(Map<String, Object> mmap) throws Exception {
    logger.info("Ropositiry : reserveList 호출" + mmap);
    List<Map<String,Object>> memList = null;
    memList = sqlSessionTemplate.selectList("reserveList", mmap);
    logger.info(memList.toString());
    return memList;
  }

  @Override
  public int ticketReservation(ReservationVO reservationVO) throws Exception {
    logger.info("Ropositiry : ticketReservation 호출");
    int result = 0;
    result = sqlSessionTemplate.insert("ticketInsert", reservationVO);

    return result;
  }

  @Override
  public int gmamReserveUpdate(ReservationVO reservationVO) throws Exception {
    logger.info("Ropositiry : gmamReserveUpdate 호출");
    return sqlSessionTemplate.update("gmamReserveUpdate", reservationVO);
  }

  @Override
  public int reservationDelete(ReservationVO reservationVO) throws Exception {
    logger.info("Ropositiry : reservationDelete 호출");
    int result = 0;
    result = sqlSessionTemplate.delete("reservationDelete", reservationVO);
    return result;
  }
}
