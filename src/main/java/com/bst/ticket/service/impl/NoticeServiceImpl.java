package com.bst.ticket.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bst.ticket.dao.NoticeDao;
import com.bst.ticket.service.NoticeService;
@Service
public class NoticeServiceImpl implements NoticeService {
    Logger logger=LoggerFactory.getLogger("NoticeServiceImpl".getClass());
    @Autowired
    private NoticeDao noticeDao;

    @Override
    public List<Map<String, Object>> noticeListINFO(Map<String, Object> pmap) throws Exception{
        List<Map<String, Object>> list = new ArrayList<>();
        logger.info("Service INFO호출");
        list = noticeDao.noticeListINFO(pmap);
        logger.info(list.toString());
        return list;
    }

    @Override
    public List<Map<String, Object>> noticeListContent(Map<String, Object> cmap) throws Exception {
        List<Map<String, Object>> list2 = new ArrayList<>();
        list2 = noticeDao.noticeListContent(cmap);
        logger.info(list2.toString());
        return list2;
    }
}

