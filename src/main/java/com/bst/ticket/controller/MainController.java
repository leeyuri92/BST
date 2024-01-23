package com.bst.ticket.controller;

import com.bst.ticket.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/mainPage/*")
public class MainController {

    @Autowired
    private MainService mainService;

    @GetMapping("/ticketList")
    public String ticketList(Model model,@RequestParam Map<String,Object> tmap) {
        List<Map<String,Object>> ticketList = null;
        ticketList = mainService.ticketList(tmap);
        model.addAttribute("ticketList", ticketList);
        return "forward:mainPage.jsp";
    }
}