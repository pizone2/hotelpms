package com.dev.hotelpms.booking;

import java.util.Date;

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

     public String getReservationNumber() {
          return reservationNumber;
     }

     public void setReservationNumber(String reservationNumber) {
          this.reservationNumber = reservationNumber;
     }

     public Long getRoomNumber() {
          return roomNumber;
     }

     public void setRoomNumber(Long roomNumber) {
          this.roomNumber = roomNumber;
     }

     public String getId() {
          return id;
     }

     public void setId(String id) {
          this.id = id;
     }

     public String getRoomType() {
          return roomType;
     }

     public void setRoomType(String roomType) {
          this.roomType = roomType;
     }

     public String getName() {
          return name;
     }

     public void setName(String name) {
          this.name = name;
     }

     public String getReservationEmail() {
          return reservationEmail;
     }

     public void setReservationEmail(String reservationEmail) {
          this.reservationEmail = reservationEmail;
     }

     public String getGuestCount() {
          return guestCount;
     }

     public void setGuestCount(String guestCount) {
          this.guestCount = guestCount;
     }

     public Date getPaymentDate() {
          return paymentDate;
     }

     public void setPaymentDate(Date paymentDate) {
          this.paymentDate = paymentDate;
     }

     public Date getCheckinDate() {
          return checkinDate;
     }

     public void setCheckinDate(Date checkinDate) {
          this.checkinDate = checkinDate;
     }

     public Date getCheckoutDate() {
          return checkoutDate;
     }

     public void setCheckoutDate(Date checkoutDate) {
          this.checkoutDate = checkoutDate;
     }

     public String getReservationStatus() {
          return reservationStatus;
     }

     public void setReservationStatus(String reservationStatus) {
          this.reservationStatus = reservationStatus;
     }

     public Long getPaymentAmount() {
          return paymentAmount;
     }

     public void setPaymentAmount(Long paymentAmount) {
          this.paymentAmount = paymentAmount;
     }



}
