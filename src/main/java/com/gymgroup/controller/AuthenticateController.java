package com.gymgroup.controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 *
 * @author Alex
 */
@Controller
public class AuthenticateController {
    
    @GetMapping("/loginPage")
    public String showLoginForm(){
        
        return "form-login";
    }
    
    @GetMapping("/access-denied")
    public String showAccessDeniedPage(){
        return "access-denied";
    }
}
