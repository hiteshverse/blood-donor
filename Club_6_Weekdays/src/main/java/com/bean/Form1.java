package com.bean;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class Form1 {

	@GetMapping("form")
	public String form(UserBean userbean) {
		System.out.println(userbean.getFirstName());
		System.out.println(userbean.getLastName());
		System.out.println(userbean.getEmail());
		System.out.println(userbean.getPassword());
		System.out.println(userbean.getGender());
		
		return "Form";
	}
	
	@PostMapping("saveuser")
	public String saveuser(UserLogin userlogin) {
		
		System.out.println(userlogin.getUserName());
		System.out.println(userlogin.getPassword());
		
		
		
		return "login";
	}
}
