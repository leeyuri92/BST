package com.bst.ticket.dao.impl;

import com.bst.ticket.dao.MainDao;
import lombok.Data;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
import java.util.Map;

@Repository
public class MainDaoImpl implements MainDao {
    Logger logger = LoggerFactory.getLogger(MainDaoImpl.class);

    @Autowired
    SqlSessionTemplate sqlSessionTemplate;

    @Override
    public List<Map<String, Object>> ticketList(Map<String, Object> tmap) throws Exception {
        logger.info("Dao : ticketList 호출");

        return sqlSessionTemplate.selectList("mainTicketList",tmap);
    }
}