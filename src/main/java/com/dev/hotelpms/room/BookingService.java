package com.dev.hotelpms.room;


import com.dev.hotelpms.user.UserVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
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

    public List<RoomTypeVO> getRoomTypeList(RoomTypeVO roomTypeVO) throws Exception {
        return bookingDAO.getRoomTypeList(roomTypeVO);
    }

    public List<BookingVO> getReserved(BookingVO bookingVO) throws Exception {
        return bookingDAO.getReserved(bookingVO);
    }

    public int getBookingCheck(BookingVO bookingVO) throws Exception {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Object principal = authentication.getPrincipal();

        if (principal instanceof UserVO) {
            UserVO user = (UserVO) principal;
            bookingVO.setId(user.getId());

            System.out.println(user.getId());
        } else if (principal instanceof String && "anonymousUser".equals(principal)) {
            // handle unexpected "anonymousUser"
            // 인증되지 않은 사용자의 경우 특정 작업을 수행하거나 오류를 무시하도록 처리할 수 있습니다.
            // 여기서는 0을 반환하도록 처리합니다.
            return 0;
        } else {
            // Handling different types of principals
            throw new IllegalStateException("Unsupported authentication principal type: " + principal.getClass());
        }
        return bookingDAO.getBookingCheck(bookingVO);
    }

}

