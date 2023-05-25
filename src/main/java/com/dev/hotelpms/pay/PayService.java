package com.dev.hotelpms.pay;


import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.security.Principal;


@Slf4j
@Service
public class PayService {

    @Autowired
    private PayDAO payDAO;
    @Autowired
    private HttpSession httpSession;


    public PayVO getPayDetail(PayVO payVO)throws Exception{

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String name1 = authentication.getName();

        payVO.setId(name1);

        return payDAO.getPayDetail(payVO);
    }

    public int setPayAdd(PayVO payVO)throws Exception{
        return  payDAO.setPayAdd(payVO);
    }
}
