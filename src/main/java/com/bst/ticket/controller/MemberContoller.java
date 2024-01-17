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

import com.bst.ticket.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberContoller {
  Logger logger = LoggerFactory.getLogger(MemberContoller.class);

  @Autowired
  private MemberService memberService;
  



  /*
    작성자 : 박병현
    작성일자 : 24.01.18
    기능 : 프로필페이지에 회원 정보 조회
   */
  @GetMapping("memberProfile")
    public String memberProfile(@RequestParam Map<String,Object> mmap, Model model) throws Exception{
      logger.info("Controller : memberProfile 호출");

      List<Map<String,Object>> memberList = null;
      memberList = memberService.memberList(mmap);
      model.addAttribute("memberList", memberList);
      return "forward:/mypage/profileForm.jsp";
  }
}
