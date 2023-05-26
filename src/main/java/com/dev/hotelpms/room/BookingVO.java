package com.dev.hotelpms.room;

import lombok.Getter;
import lombok.Setter;

import java.sql.Date;
import java.util.List;


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


     //객실 예약 정보를 불러오기 위한 리스트 선언
     private List<RoomVO> roomVOs;
     private RoomTypeVO roomTypeVO;


}
