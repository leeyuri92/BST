package com.bst.ticket.vo;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class MainVO {
    private String gm_id;
    private String team_home;
    private String team_away;
    private String gm_date;
    private String std_name;

    @Override
    public String toString() {
        return "MainVO{" +
                "gm_id='" + gm_id + '\'' +
                ", team_home='" + team_home + '\'' +
                ", team_away='" + team_away + '\'' +
                ", gm_date='" + gm_date + '\'' +
                ", std_name='" + std_name + '\'' +
                '}';
    }
}