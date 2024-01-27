package com.bst.ticket.service.impl;

import com.bst.ticket.dao.MainDao;
import com.bst.ticket.service.MainService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class MainServiceImpl implements MainService {
    Logger logger = LoggerFactory.getLogger(MainServiceImpl.class);
    @Autowired
    private MainDao mainDao;

    @Override
    public List<Map<String, Object>> ticketList(Map<String, Object> tmap) {
        // mainDao.ticketList 메서드 호출 시 tmap을 전달
        List<Map<String, Object>> ticketList = null;
        logger.info("Service : ticketList 호출");
        try {
            ticketList = mainDao.ticketList(tmap);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        return ticketList;
    }
}
