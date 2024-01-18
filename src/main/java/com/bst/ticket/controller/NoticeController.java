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


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bst.ticket.service.NoticeService;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {
    Logger logger=LoggerFactory.getLogger("NoticeController".getClass());
    @Autowired
    private NoticeService noticeService;

    @GetMapping("noticeList")
    public String noticeList(@RequestParam Map<String, Object> pmap, Model model) {
        List<Map<String, Object>> listA =null;
        listA=noticeService.noticeListINFO(pmap);
            model.addAttribute("listA", listA);
            return "forward:openNotice.jsp";
    }


    @GetMapping("noticeDetail")
    public String noticeDetail(@RequestParam Map<String, Object> cmap, Model model) {
        List<Map<String, Object>> listC = null;
        listC=noticeService.noticeListContent(cmap);
            model.addAttribute("listC", listC);
            logger.info(listC.toString());
        return "forward:openNoiceDetail.jsp";
    }
}