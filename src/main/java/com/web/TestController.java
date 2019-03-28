package com.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestController {
   @RequestMapping("/test/sayHello")
    public ModelAndView sayhello()
   {
       ModelAndView modelAndView = new ModelAndView();
       modelAndView.setViewName("hello");
       modelAndView.addObject("message","test...");
       return  modelAndView;
   }
}
