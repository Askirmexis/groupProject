/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gymgroup.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Alex
 */
@Controller
@RequestMapping("/user")
public class UserController {
    
    
    @GetMapping("/update")
    public String editUser(){
        return "editprofile";
    }
}
