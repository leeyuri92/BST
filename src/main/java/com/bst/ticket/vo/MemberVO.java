package com.bst.ticket.vo;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Data
@NoArgsConstructor
public class MemberVO {
  private int mem_no;

  @Builder
    public MemberVO(int mem_no){
      super();
      this.mem_no = mem_no;
    }
}
