package com.dev.hotelpms.pay;


import com.dev.hotelpms.user.UserVO;
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

        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        Object principal = authentication.getPrincipal();

        if (principal instanceof UserVO) {
            UserVO user = (UserVO) principal;
            payVO.setId(user.getId());
            payVO.setReservationEmail(user.getEmail());
            payVO.setPhoneNumber(user.getPhoneNumber());
            payVO.setName(user.getName());

            System.out.println(user.getId());
            System.out.println(user.getEmail());
            System.out.println(user.getEmail());
            System.out.println(user.getPhoneNumber());
            System.out.println(user.getName());
        } else if (principal instanceof String) {
            // 예외 처리: 인증 주체가 문자열인 경우에 대한 처리
            // 이 부분은 사용자에게 맞는 예외 처리 로직을 추가해야 합니다.
            throw new IllegalStateException("Unexpected authentication principal: " + principal);
        } else {
            // 예외 처리: 다른 타입의 인증 주체인 경우에 대한 처리
            // 이 부분은 사용자에게 맞는 예외 처리 로직을 추가해야 합니다.
            throw new IllegalStateException("Unsupported authentication principal type: " + principal.getClass());
        }

                payDAO.setResstatus(payVO);
        return  payDAO.setPayAdd(payVO);
    }
}
