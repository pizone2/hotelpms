package com.dev.hotelpms.customer;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
@RequestMapping("/customer/*")
@Slf4j
public class CustomerController {

    @Autowired
    private CustomerService customerService;
    @GetMapping("join")
    public ModelAndView setJoin(@ModelAttribute CustomerVO customerVO) throws Exception{
        ModelAndView mv = new ModelAndView();
        mv.setViewName("customer/join");
        return mv;
    }

    @PostMapping("join")
    public ModelAndView setJoin(@Valid CustomerVO customerVO, BindingResult bindingResult) throws Exception{
        log.error("::::{}::::",customerVO.getId());
        ModelAndView mv = new ModelAndView();
        boolean check  = customerService.memberCheck(customerVO, bindingResult);
        if(check) {
            log.warn("======검증에 실패======");
            mv.setViewName("customer/join");
            return mv;
        }
        int result = customerService.setJoin(customerVO);
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

    @GetMapping("myPage")
    public void getMyPage() throws Exception{

    }
}
