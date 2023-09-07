package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HelloController {
       
	    @GetMapping("/hello")
        String hello() {
        	System.out.println("hello()...");
        	return "hello";    //MVC에서 V(view)의 이름이 hello..리턴한다
	    }        

 
}
