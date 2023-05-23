package com.dev.hotelpms.pay;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Slf4j
@Service
public class PayService {

    @Autowired
    private PayDAO payDAO;
    public PayVO getPayDetail(PayVO payVO)throws Exception{
        return payDAO.getPayDetail(payVO);
    }
}
