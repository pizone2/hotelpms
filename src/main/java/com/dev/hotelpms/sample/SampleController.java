package com.dev.hotelpms.sample;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/sample/*")
public class SampleController {

    @GetMapping("sample")
    public ModelAndView smaple(){
        ModelAndView mv = new ModelAndView();
        mv.setViewName("temp/sample");
        return mv;
    }

}
