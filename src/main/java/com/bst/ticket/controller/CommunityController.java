package com.bst.ticket.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bst.ticket.service.CommunityService;

@Controller
@RequestMapping("/community/*")
public class CommunityController {
    Logger logger = LoggerFactory.getLogger(CommunityController.class);

    @Autowired
    private CommunityService communityService;

  /*
  Author: 전수빈
  Data: 22 Jan
  Feature: Community board
   */
    @GetMapping("/")
    public String communityPage() {
        return "community";
    }

}
