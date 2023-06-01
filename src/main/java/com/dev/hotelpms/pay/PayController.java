package com.dev.hotelpms.pay;

import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.request.CancelData;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping("/pay/*")
public class PayController {

    private final IamportClient iamportClientApi;

    public PayController() {
        this.iamportClientApi = new IamportClient("3437540248145320",
                "6oWalu2hW6Xe49zkDJQ3xUaTU4ScgPwYPDPkxrIxlcyfC39TPHSZ2ykPEZiw8jaBep6TokZNoAID2E22");
    }

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

    @GetMapping ("/paymentList")
    public ModelAndView PaymentList(PayVO payVO)throws Exception{
        ModelAndView modelAndView = new ModelAndView();

        List<PayVO> payVOs = payService.getPayList(payVO);
        modelAndView.addObject("payVO",payVOs);
        modelAndView.setViewName("pay/paymentList");


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

    @PostMapping("/cancelPayments")
    public ModelAndView cancelPayments(PayVO payVO) throws Exception {

        String reservationNumber = payVO.getReservationNumber();
        CancelData data = new CancelData(reservationNumber, false); // merchant_uid에 값을 설정하는 경우

//        CancelData data = payService.cancelData(payVO);//취소데이터 셋업
        IamportResponse<Payment> cancel = iamportClientApi.cancelPaymentByImpUid(data);//취소

        ModelAndView modelAndView = new ModelAndView("common/ajaxResult");
        modelAndView.addObject("cancelResponse", cancel);

        payService.setPayDelete(payVO);
        return modelAndView;

    }



}
