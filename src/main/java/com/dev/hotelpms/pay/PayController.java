package com.dev.hotelpms.pay;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PayController {
    @GetMapping("/pay")
    public String pay(){
        return "pay/pay";
    }

    @GetMapping ("/paymentDetail")
    public String paymentDetail(){
        return "pay/paymentDetails";
    }






}
