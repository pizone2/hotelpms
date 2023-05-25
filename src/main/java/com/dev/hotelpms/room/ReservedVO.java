package com.dev.hotelpms.room;

import lombok.Getter;
import lombok.Setter;

import java.sql.Date;

@Setter
@Getter
public class ReservedVO {
    private Integer reservationNum;
    private Integer roomNumber;
    private Date reservationDate;
    private String roomType;
}
