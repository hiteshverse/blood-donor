package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.bean.UserCalculator;

@Controller
public class Calculator {

    @GetMapping("calc")
    public String showForm() {
    	System.out.println("===>");
        return "Calculator";
    }

    @PostMapping("add")
    public String calculate(UserCalculator usercal) {
    		System.out.println(usercal.getNum1());
    		System.out.println(usercal.getNum2());
    		System.out.println(usercal.getNum1()+usercal.getNum2());

      return "Add";
    }
}
