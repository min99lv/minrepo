package com.example.minmybatis.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class BuyerController {
    
    @RequestMapping(value = "/login")
    public String loginForm() {
        System.out.println("컨트롤러 호출됨");
        return "loginForm";  // "WEB-INF/views/login.jsp" 파일을 찾음
    }
    
    @RequestMapping(value="/join")
    public String joinForm() {
    	System.out.println("join 컨트롤");
    return "joinForm";
    }
	
}
