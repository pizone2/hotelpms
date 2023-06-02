package com.dev.hotelpms.room;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BookingDAO {
    public List<ReservedVO> getSucessReserve(String roomType) throws Exception;
    public List<ReservedVO> getPossibleReserve() throws Exception;
    public List<RoomTypeVO> getRoomTypeList(RoomTypeVO roomTypeVO)throws Exception;
    public List<BookingVO> getReserved(BookingVO bookingVO)throws Exception;
    public int getBookingCheck(BookingVO bookingVO)throws Exception;

}
