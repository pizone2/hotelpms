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

    @Autowired
    private BookingService bookingService;



    @GetMapping ("reservation")
    public ModelAndView getBookingList() throws Exception {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("booking/reservation");
        return mv;
    }


    @GetMapping("reservationRoom")
    public ModelAndView getBookingRoom(BookingVO bookingVO,RoomTypeVO roomTypeVO) throws Exception {
        ModelAndView mv = new ModelAndView();

        List<RoomTypeVO> ar = bookingService.getRoomTypeList(roomTypeVO);
        List<BookingVO> ar2 = bookingService.getReserved(bookingVO);


        mv.addObject("type",ar);
        mv.addObject("room",ar2);

        mv.setViewName("booking/reservationRoom");

        return mv;
    }







}
