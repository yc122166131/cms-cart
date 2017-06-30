package com.yc.cart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginAction {
	
	@RequestMapping("/login/logined")
	public String validate(){
		System.out.println("进来的");
		return "login";
	}

}
