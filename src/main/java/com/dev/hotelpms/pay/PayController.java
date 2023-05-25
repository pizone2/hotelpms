package com.dev.hotelpms.pay;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Slf4j
@Controller
@RequestMapping("/pay/*")
public class PayController {

    @Autowired
    private  PayService payService;

    @GetMapping("/pay")
    public String pay(){

        return "pay/pay";
    }

    @GetMapping ("/paymentDetail")
    public ModelAndView paymentDetail(PayVO payVO)throws Exception{
        ModelAndView modelAndView = new ModelAndView();

        payVO = payService.getPayDetail(payVO);
        modelAndView.addObject("payVO",payVO);
        modelAndView.setViewName("pay/paymentDetail");


        return modelAndView;
    }

    @PostMapping("/add")
    public ModelAndView setPayAdd(PayVO payVO)throws Exception{
        ModelAndView modelAndView = new ModelAndView();

        int result = payService.setPayAdd(payVO);
        modelAndView.addObject("result",result);
        modelAndView.setViewName("common/ajaxResult");

        return modelAndView;
    }






}
