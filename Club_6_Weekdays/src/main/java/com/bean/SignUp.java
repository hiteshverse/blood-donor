package com.bean;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SignUp {
	
	@GetMapping("signup")
	public String signUp() {
		return "Signup"; //views : File name 
	}
	
	@GetMapping("login")
	public String login() {
		return "login";
	}

}
