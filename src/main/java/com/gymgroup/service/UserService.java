/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gymgroup.service;

import com.gymgroup.entities.User;
import org.springframework.security.core.userdetails.UserDetailsService;

/**
 *
 * @author Alex
 */
public interface UserService extends UserDetailsService{ 

    public User findByUsername(String username);

    public void save(User user);
    
}
