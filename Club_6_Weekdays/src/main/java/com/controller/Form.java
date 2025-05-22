package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.bean.UserForm;

@Controller
public class Form {

    @GetMapping("formes")
    public String forms() {
        System.out.println("====>");
        return "Forms"; 
    }

    @PostMapping("inc")
    public String income(UserForm userform) {
        System.out.println(userform.getName());
        System.out.println(userform.getIncome());
        
        if (userform.getIncome() > 1200000) {
            System.out.println("You are taxable...");
        } 
        else {
            System.out.println("You have to earn more...");
        }
        return "Income"; 
    }
}