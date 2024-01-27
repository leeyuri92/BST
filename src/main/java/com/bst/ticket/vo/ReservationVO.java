package com.bst.ticket.vo;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ReservationVO {
  private Integer rsv_id;
  private String rsv_number;
  private Integer mbr_seq;
  private Integer gm_id;


  @Override
  public String toString() {
    return "ReservationVO{" +
            "rsv_id=" + rsv_id +
            ", rsv_number='" + rsv_number + '\'' +
            ", mbr_seq=" + mbr_seq +
            ", mg_id=" + gm_id +
            '}';
  }
}
