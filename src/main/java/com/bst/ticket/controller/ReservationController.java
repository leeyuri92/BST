package com.bst.ticket.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bst.ticket.service.ReservationService;

/**********************************************************************************
    작성자 : 박병현
    작성일자 : 24.01.17
    기능 : 마이페이지 
**********************************************************************************/
@Controller
@RequestMapping("/reservation/*")
public class ReservationController {
  Logger logger = LoggerFactory.getLogger(ReservationController.class);

  @Autowired
  private ReservationService reservationService;
/**********************************************************************************
    작성자 : 박병현
    작성일자 : 24.01.17
    기능 : 예약한 내역 조회
**********************************************************************************/
  @GetMapping("reserveList")
  public String reserveList(@RequestParam Map<String,Object> mmap, Model model) throws Exception{
    logger.info("Controller : reserveList 호출");
    List<Map<String ,Object>> gameList;
    
    gameList = reservationService.reserveList(mmap);
    model.addAttribute("gameList", gameList);

    return "forward:/mypage/mypageForm.jsp";
  }
}
