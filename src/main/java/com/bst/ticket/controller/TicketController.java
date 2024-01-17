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

import com.bst.ticket.service.TicketService;

@Controller
@RequestMapping("/ticket/*")
public class TicketController {
  Logger logger = LoggerFactory.getLogger(TicketController.class);

  @Autowired
  private TicketService ticketService;

  @GetMapping("ticketList")
  public String ticketList(@RequestParam Map<String,Object> tmap, Model model) throws Exception{
    logger.info("Controller : ticketList 호출");
    List<Map<String ,Object>> ticketList;
    
    ticketList = ticketService.ticketList(tmap);
    model.addAttribute("ticketList", ticketList);

    return "forward:/ticket/ticketList.jsp";
  }


}
