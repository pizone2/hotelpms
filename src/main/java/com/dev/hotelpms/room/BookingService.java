package com.dev.hotelpms.room;


import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
public class BookingService {

    @Autowired
    private BookingDAO bookingDAO;


    public List<RoomTypeVO> getRoomTypeList(RoomTypeVO roomTypeVO) throws Exception {
        return bookingDAO.getRoomTypeList(roomTypeVO);
    }

    public List<BookingVO> getReserved(BookingVO bookingVO) throws Exception {
        return bookingDAO.getReserved(bookingVO);
    }

}
