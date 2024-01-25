package com.bst.ticket.controller;

import com.bst.ticket.service.MainService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/mainpage/*")
public class MainController {
    Logger logger = LoggerFactory.getLogger(MainController.class);
    @Autowired
    private MainService mainService;

    @GetMapping("/ticketList")
    public String ticketList(Model model,@RequestParam Map<String,Object> tmap) {
        List<Map<String,Object>> ticketList = null;
        logger.info("MainController: ticketList 호출");
        ticketList = mainService.ticketList(tmap);
        logger.info(ticketList.toString());
        model.addAttribute("ticketList", ticketList);
        return "forward:mainpage.jsp";
    }
}