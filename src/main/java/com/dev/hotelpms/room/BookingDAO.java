package com.dev.hotelpms.room;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BookingDAO {

    public List<RoomTypeVO> getRoomTypeList(RoomTypeVO roomTypeVO)throws Exception;
    public List<BookingVO> getReserved(BookingVO bookingVO)throws Exception;
}
