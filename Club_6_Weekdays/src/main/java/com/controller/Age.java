package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.bean.UserAge;

import org.springframework.ui.Model;

@Controller
public class Age {

	@GetMapping("vote")
	public String age() {
		return "Vote";
	}
	String ans="";
	@PostMapping("Voti")
	public String voting(UserAge userage,Model model) {
		boolean isError=false;
		
		if(userage.getName()==null || userage.getName().trim().length()==0) {
			model.addAttribute("nameError","Please enter the name");
			isError=true;
		}
		if(userage.getGender()==null) {
			model.addAttribute("genderError","Please select the gender");
			isError=true;
		}
		
		if (isError==true) {
			return "Vote";
			
		}
		 
		if(userage.getGender().equals("male") && userage.getAge()>=18) {
			ans="Is eligible for vote";
			model.addAttribute("Name ",userage.getName());
			model.addAttribute("ans",ans);
		}
		else if(userage.getGender().equals("female") && userage.getAge()>=21) {
			ans="Is eligible for vote";
			model.addAttribute("Name ",userage.getName());
			model.addAttribute("ans",ans);

		}
		else {
			ans="Is not eligible for vote";
			model.addAttribute("Name ",userage.getName());
			model.addAttribute("ans",ans);

		}
		model.addAttribute("UserAge",userage);
		return "Voting";
		
	}
	

}
