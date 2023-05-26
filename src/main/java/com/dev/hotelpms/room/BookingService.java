package com.dev.hotelpms.room;


import com.dev.hotelpms.user.UserVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Slf4j
public class BookingService {

    @Autowired
    private BookingDAO bookingDAO;

    public UserVO getSucessReserve(UserVO userVO) throws Exception{
        userVO = bookingDAO.getSucessReserve();
        return userVO;
    }


}
