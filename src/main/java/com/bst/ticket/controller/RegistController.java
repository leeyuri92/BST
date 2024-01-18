package com.bst.ticket.controller;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bst.ticket.service.RegistService;

@Controller
@RequestMapping("/auth/*")
public class RegistController {
  Logger logger = LoggerFactory.getLogger(RegistController.class);
  @Autowired
  RegistService registService;

      /*
    작성자 : 이동건
    작성일자 : 24.01.18
    기능 : 회원가입(RegistController)
    */

  @PostMapping("regist")
  public String Regist(@RequestParam Map<String,Object> mmap) throws Exception{
    logger.info(mmap.toString());
    int result = 0;
    String path = "";
    result = registService.Regist(mmap);
    if(result == 1){
      path = "redirect:/mainpage/mainpage.jsp";
    }else{
      path = "redirect:/registerror.jsp";
    }
    return path;
  }

}
