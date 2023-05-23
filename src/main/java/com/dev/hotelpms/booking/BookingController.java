package com.dev.hotelpms.booking;


import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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

}
