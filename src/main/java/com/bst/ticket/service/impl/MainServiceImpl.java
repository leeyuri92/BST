package com.bst.ticket.service.impl;

import com.bst.ticket.dao.MainDao;
import com.bst.ticket.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class MainServiceImpl implements MainService {
    @Autowired
    private MainDao mainDao;

    @Override
    public List<Map<String, Object>> ticketList(Map<String, Object> tmap) {
        // mainDao.ticketList 메서드 호출 시 tmap을 전달
        List<Map<String, Object>> ticketList = null;
        try {
            ticketList = mainDao.ticketList(tmap);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        // 수정: 메서드가 재귀 호출되지 않도록 수정
        return ticketList;
    }
}
