/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gymgroup.controller;

import com.gymgroup.entities.User;
import com.gymgroup.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Alex
 */
@RestController
@RequestMapping("/user")
public class EditController {
    
    
    @Autowired
    UserService service;
    
    @RequestMapping(value = "/update/{id}",
            produces = "application/json",
            method = RequestMethod.PUT)
    public ResponseEntity<String> update(@PathVariable("id") int id, @RequestBody User u){
        service.updateUser(id,u);
        return ResponseEntity.ok().body("User updated");
    }
    
}
