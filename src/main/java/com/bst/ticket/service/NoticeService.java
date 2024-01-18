package com.bst.ticket.service;

import java.util.List;
import java.util.Map;

/*
    작성자 : 
    작성일자 : 24.01.12
    기능 : MemberService (Interface) 
*/
public interface NoticeService {

public List<Map<String, Object>> noticeListINFO(Map<String, Object> pmap)throws Exception;

public List<Map<String, Object>> noticeListContent(Map<String, Object> cmap)throws Exception;

} 
