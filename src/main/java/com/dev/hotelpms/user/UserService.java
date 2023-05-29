package com.dev.hotelpms.user;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import java.util.List;

@Service
@Slf4j
public class UserService implements UserDetailsService {

    @Autowired
    private UserDAO userDAO;

    @Autowired
    private PasswordEncoder passwordEncoder;
    @Override
    public UserDetails loadUserByUsername(String id) throws UsernameNotFoundException {
        //db에서 꺼낸 로그인정보가지고 service
        log.error("==================Spring Security Login==================");
        log.error("=================={}==================", id);
        UserVO userVO = new UserVO();
        userVO.setId(id);
        try {
            userVO = userDAO.getLogin(userVO);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        // TODO Auto-generated method stub
        return userVO;
    }

    //패스워드가 일치하는지 검증하는 메서드 + 아이디 중복 체크 메서드
    public boolean memberCheck(UserVO userVO, BindingResult bindingResult) throws Exception{
        boolean result = false;
        //false : error가 없음, 검증 성공
        //true : error가 있음, 검증 실패

        //1. annotation의 검증 결과
        result = bindingResult.hasErrors();

        //2. password 일치 검증
        if(!userVO.getPassword().equals(userVO.getPasswordCheck())) {
            result = true;
            bindingResult.rejectValue("passwordCheck", "customer.password.notEqual");
        }
        //3. ID 중복 검사
        UserVO checkMember = userDAO.idDuplicateCheck(userVO);
        if(checkMember != null) {
            result=true;
            bindingResult.rejectValue("id", "customer.id.notEqual");
        }

        return result;
    }

    public int setJoin(UserVO userVO) throws Exception{
        userVO.setPassword(passwordEncoder.encode(userVO.getPassword()));
        int result = userDAO.setJoin(userVO);
        userVO.setRoleName("ROLE_MEMBER");
        return result;
    }

    public UserVO getCustomer(UserVO userVO) throws Exception {
        return userDAO.getCustomer(userVO);
    }

    public UserVO findId(String email) throws Exception {
        return userDAO.findId(email);
    }

    public UserVO findEmail(String id) throws Exception {
        return userDAO.findEmail(id);
    }

    public int saveTempPw(UserVO userVO) throws Exception {
        return userDAO.saveTempPw(userVO);
    }

    public int updateUser(UserVO userVO) throws Exception {
        return userDAO.updateUser(userVO);
    }


}
