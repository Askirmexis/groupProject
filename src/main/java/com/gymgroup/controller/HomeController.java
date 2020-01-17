package com.gymgroup.controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Alex
 */
@Controller
@RequestMapping("/")
public class HomeController {
    
    @GetMapping
    public String home(){
        return "home";
    }
    
//
//    @GetMapping("/admin")
//    public String adminHome(){
//        return "admin";
//    }
    
    @GetMapping("/user")
    public String userHome(){
        return "user";
    }
    
}
