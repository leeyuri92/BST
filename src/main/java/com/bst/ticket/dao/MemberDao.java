package com.bst.ticket.dao;

import java.util.List;
import java.util.Map;
public interface MemberDao {
  public List<Map<String, Object>> memberList(List<Map<String, Object>> pmap) throws Exception;
    
}
