package com.dev.hotelpms.booking;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Setter
@Getter
public class BookingVO {
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



}
