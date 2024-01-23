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


import com.bst.ticket.service.NoticeService;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {
    Logger logger=LoggerFactory.getLogger("NoticeController".getClass());
    @Autowired
    private NoticeService noticeService;

    /*
    작성자 : 김재현
    작성일자 : 24.01.19
    기능 : 공지 리스트 조회
   */
    @GetMapping("noticeList")
    public String noticeList(@RequestParam Map<String, Object> pmap, Model model) throws Exception {
        List<Map<String, Object>> listA =null;
        listA=noticeService.noticeListINFO(pmap);
            model.addAttribute("listA", listA);
            return "forward:openNotice.jsp";
    }

    /*
    작성자 : 김재현
    작성일자 : 24.01.19
    기능 : 공지 리스트 상세조회
   */
    @GetMapping("noticeDetail")
    public String noticeDetail(int ntc_id, Model model) throws Exception {
        Map<String, Object> rMap = null;
            rMap = noticeService.getNoticeDetail(ntc_id);;
        model.addAttribute("rMap", rMap);
        logger.info("ntc_id"+ntc_id);
        return "forward:openNoticeDetail.jsp";
    }
}