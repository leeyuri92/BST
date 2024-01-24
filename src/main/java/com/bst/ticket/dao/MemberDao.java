package com.bst.ticket.dao;

import java.util.List;
import java.util.Map;
public interface MemberDao {
  public List<Map<String, Object>> memberList(Map<String, Object> mmap) throws Exception;

  public String checkPwd(Map<String, Object> mbrSeq) throws Exception;

  public int memberUpdate(Map<String, Object> mmap) throws Exception;

  public int memberDelete(int mbrSeq) throws Exception;
}
