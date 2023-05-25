package com.dev.hotelpms.user;

import com.dev.hotelpms.util.MailManager;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.UUID;

@Controller
@RequestMapping("/customer/*")
@Slf4j
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private MailManager mailManager;

    @GetMapping("join")
    public ModelAndView setJoin(@ModelAttribute UserVO userVO) throws Exception{
        ModelAndView mv = new ModelAndView();
        mv.setViewName("customer/join");
        return mv;
    }

    @PostMapping("join")
    public ModelAndView setJoin(@Valid UserVO userVO, BindingResult bindingResult) throws Exception{
        log.error("::::{}::::",userVO.getId());
        ModelAndView mv = new ModelAndView();
        boolean check  = userService.memberCheck(userVO, bindingResult);
        if(check) {
            log.warn("======검증에 실패======");
            mv.setViewName("customer/join");
            return mv;
        }
        int result = userService.setJoin(userVO);
        mv.setViewName("redirect:../");
        return mv;
    }

    @GetMapping("login")
    public ModelAndView getLogin(HttpSession session) throws Exception{
        ModelAndView mv = new ModelAndView();
        Object obj = session.getAttribute("SPRING_SECURITY_CONTEXT");
        //로그인 후 뒤로가기 했을때, 다시 로그인 화면 나타나는 것을 방지
        if(obj==null) {
            mv.setViewName("customer/login");
        }else {
            mv.setViewName("redirect:/");
        }
        return mv;
    }

    @PostMapping("/checkMail") // AJAX와 URL을 매핑시켜줌
    @ResponseBody  //AJAX후 값을 리턴하기위해 작성
    public String SendMail(String email) throws MessagingException {
        UUID uuid = UUID.randomUUID(); // 랜덤한 UUID 생성
        String key = uuid.toString().substring(0, 7); // UUID 문자열 중 7자리만 사용하여 인증번호 생성
        String sub ="인증번호 입력을 위한 메일 전송";
        String con = "인증 번호 : "+key;
        log.error("======{}======",email);
        mailManager.send(email,sub,con);
        return key;
    }

    @GetMapping("myPage")
    public ModelAndView getCustomer(UserVO userVO) throws Exception{
        ModelAndView mv = new ModelAndView();
        mv.setViewName("customer/myPage");
        return mv;
    }
}
