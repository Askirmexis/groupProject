package com.gymgroup.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.ws.rs.GET;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @GetMapping()
    public String hello(){
     return "admin";
    }
}
