package com.dev.hotelpms.room;


import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/booking/*")
@Slf4j
public class BookingController {
//테스트
    @Autowired
    private BookingService bookingService;



    @GetMapping ("reservation")
    public ModelAndView getBookingList() throws Exception {
        ModelAndView mv = new ModelAndView();
        List<ReservedVO> voSuccessList=  bookingService.getSucessReserve("더블");
        mv.addObject("duubleList",voSuccessList);
        voSuccessList=  bookingService.getSucessReserve("디럭스");
        mv.addObject("deluxList",voSuccessList);
        voSuccessList=  bookingService.getSucessReserve("스위트");
        mv.addObject("sweetList",voSuccessList);
        voSuccessList=  bookingService.getSucessReserve("스탠다드");
        mv.addObject("standardList",voSuccessList);
        voSuccessList=  bookingService.getSucessReserve("트윈");
        mv.addObject("twinList",voSuccessList);
        List<ReservedVO> voPossibleList=  bookingService.getPossibleReserve();
        mv.addObject("possibleList",voPossibleList);
        mv.setViewName("booking/reservation");
        return mv;
    }


    @GetMapping("reservationRoom")
    public ModelAndView getBookingRoom(BookingVO bookingVO,RoomTypeVO roomTypeVO) throws Exception {
        ModelAndView mv = new ModelAndView();

        int bookingCheck = 0;
        bookingCheck = bookingService.getBookingCheck(bookingVO);

        // 예약 기록이 있는 경우 할인율을 10으로 설정하고, 없는 경우 0으로 설정합니다
        int discountRate = (bookingCheck == 0) ? 10 : 0;

        List<RoomTypeVO> ar = bookingService.getRoomTypeList(roomTypeVO);
        List<BookingVO> ar2 = bookingService.getReserved(bookingVO);

        mv.addObject("type",ar);
        mv.addObject("room",ar2);
        mv.addObject("discountRate", discountRate); // 할인율 값을 JSP로 전달합니다

        System.out.println(discountRate);
        mv.setViewName("booking/reservationRoom");
        return mv;
    }







}
