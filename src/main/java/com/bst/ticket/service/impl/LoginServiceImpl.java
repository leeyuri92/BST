package com.bst.ticket.service.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bst.ticket.dao.LoginDao;
import com.bst.ticket.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService{
  Logger logger = LoggerFactory.getLogger(LoginServiceImpl.class);

  @Autowired
  private LoginDao loginDao;
}
