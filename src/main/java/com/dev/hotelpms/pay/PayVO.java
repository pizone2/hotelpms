package com.dev.hotelpms.pay;

import lombok.Data;

import java.util.Date;

@Data
public class PayVO {
    private  String reservationNumber;
    private  Long roomNumber;
    private  String id;
    private  String roomType;
    private  String name;

    private  String reservationEmail;

    private  String guestCount;
    private Date paymentDate;
    private Date checkinDate;
    private Date checkoutDate;
    private String reservationStatus;
    private Long paymentAmount;
    private String phoneNumber;

}
