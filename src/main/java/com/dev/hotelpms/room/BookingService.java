package com.dev.hotelpms.room;


import com.dev.hotelpms.user.UserVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
public class BookingService {

    @Autowired
    private BookingDAO bookingDAO;

    public List<ReservedVO> getSucessReserve(String roomType) throws Exception{
        return bookingDAO.getSucessReserve(roomType);
    }

    public List<ReservedVO> getPossibleReserve() throws Exception{
        return bookingDAO.getPossibleReserve();
    }


}
