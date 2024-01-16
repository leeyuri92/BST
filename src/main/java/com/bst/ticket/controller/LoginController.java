package com.bst.ticket.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bst.ticket.service.LoginService;

@Controller
@RequestMapping("/login/*")
public class LoginController {
  Logger logger = LoggerFactory.getLogger(LoginController.class);

  @Autowired
  private LoginService loginService;
  
}
