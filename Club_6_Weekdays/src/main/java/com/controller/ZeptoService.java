package com.controller;

import java.util.ArrayList;
import java.util.HashMap;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class ZeptoService {

    // HashMap to store area names and their serviceable zip codes
    private final HashMap<String, ArrayList<Integer>> servicable = new HashMap<>();

    public ZeptoService() {
        System.out.println("Zipcode is initialized.");

        ArrayList<Integer> sateliteZipcodes = new ArrayList<>();
sateliteZipcodes.add(380015);
sateliteZipcodes.add(380017);
servicable.put("satelite", sateliteZipcodes);
        ArrayList<Integer> navrangpuraZipcodes = new ArrayList<>();
navrangpuraZipcodes.add(380009);
servicable.put("navrangpura", navrangpuraZipcodes);
        ArrayList<Integer> solaroadZipcodes = new ArrayList<>();
solaroadZipcodes.add(380010);
solaroadZipcodes.add(380023);
solaroadZipcodes.add(380024);
servicable.put("solaroad", solaroadZipcodes);
        ArrayList<Integer> paldiZipcodes = new ArrayList<>();
paldiZipcodes.add(380006);
paldiZipcodes.add(380005);
paldiZipcodes.add(380004);
servicable.put("paldi", paldiZipcodes);
    }

    @GetMapping("inputarea")
    public String inputArea() {
        return "ServiceForm";
    }

    @PostMapping("check")
    public String check(String areaName, Integer zipCode, Model model) {
        boolean isError = false;

        if (areaName == null || areaName.trim().isEmpty()) {
            isError = true;
            model.addAttribute("areaNameError", "Please enter the area name.");
        }
        if (zipCode == null) {
            isError = true;
            model.addAttribute("zipCodeError", "Please enter the zip code.");
        }

        if (isError) {
            return "ServiceForm";
        } else {
            String normalizedArea = areaName.trim().toLowerCase();
            model.addAttribute("zipCode", zipCode);
            model.addAttribute("areaName", areaName);

            if (servicable.getOrDefault(normalizedArea, new ArrayList<>()).contains(zipCode)) {
                model.addAttribute("status", "Servicable");
            } else {
                model.addAttribute("status", "Not Servicable");
            }
            return "Result";
        }
    }

    @GetMapping("addzipcode")
    public String addZipcodeForm() {
        return "AddZipcode";
    }

    @PostMapping("checkzipcode")
    public String checkZipcode(String areaName, Integer zipCode, Model model) {
        if (areaName == null || areaName.trim().isEmpty()) {
            model.addAttribute("areaError", "Area name is required.");
            return "AddZipcode";
        }

        String normalizedArea = areaName.trim().toLowerCase();
        servicable.computeIfAbsent(normalizedArea, k -> new ArrayList<>()).add(zipCode);

        model.addAttribute("message", "Zipcode added successfully.");
        model.addAttribute("areaName", normalizedArea);
        model.addAttribute("zipcodes", servicable.get(normalizedArea));
        return "ListZipcodes";
    }

    @GetMapping("dashboard")
    public String dashboard() {
        return "Dashboard";
    }

    @GetMapping("listzipcodes")
    public String listZipcodes() {
        return "ListZipcodes";
    }

    @PostMapping("list")
    public String list(@RequestParam("areaName") String areaName, Model model) {
        if (areaName == null || areaName.trim().isEmpty()) {
            model.addAttribute("areaError", "Area name is required.");
            return "ListZipcodes";
        }

        String normalizedArea = areaName.trim().toLowerCase();
        ArrayList<Integer> zipcodes = servicable.get(normalizedArea);

        if (zipcodes != null && !zipcodes.isEmpty()) {
            model.addAttribute("zipcodes", zipcodes);
            model.addAttribute("areaName", areaName);
        } else {
            model.addAttribute("areaError", "No zip codes found for this area.");
        }

        return "ListZipcodes";
    }

}
