package com.dev.hotelpms.customer;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

@Service
@Slf4j
public class CustomerService implements UserDetailsService {

    @Autowired
    private CustomerDAO customerDAO;

    @Autowired
    private PasswordEncoder passwordEncoder;
    @Override
    public UserDetails loadUserByUsername(String id) throws UsernameNotFoundException {
        //db에서 꺼낸 로그인정보가지고 service
        log.error("==================Spring Security Login==================");
        log.error("=================={}==================", id);
        CustomerVO customerVO = new CustomerVO();
        customerVO.setId(id);
        try {
            customerVO = customerDAO.getLogin(customerVO);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        // TODO Auto-generated method stub
        return customerVO;
    }

    //패스워드가 일치하는지 검증하는 메서드 + 아이디 중복 체크 메서드
    public boolean memberCheck(CustomerVO customerVO, BindingResult bindingResult) throws Exception{
        boolean result = false;
        //false : error가 없음, 검증 성공
        //true : error가 있음, 검증 실패

        //1. annotation의 검증 결과
        result = bindingResult.hasErrors();

        //2. password 일치 검증
        if(!customerVO.getPassword().equals(customerVO.getPasswordCheck())) {
            result = true;
            bindingResult.rejectValue("passwordCheck", "customer.password.notEqual");
        }
        //3. ID 중복 검사
        CustomerVO checkMember = customerDAO.idDuplicateCheck(customerVO);
        if(checkMember != null) {
            result=true;
            bindingResult.rejectValue("id", "customer.id.notEqual");
        }

        return result;
    }

    public int setJoin(CustomerVO customerVO) throws Exception{
        customerVO.setPassword(passwordEncoder.encode(customerVO.getPassword()));
        int result = customerDAO.setJoin(customerVO);
        return result;
    }
}
