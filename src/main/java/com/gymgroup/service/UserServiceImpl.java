/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gymgroup.service;

import com.gymgroup.dao.UserDao;
import com.gymgroup.entities.Role;
import com.gymgroup.entities.User;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class UserServiceImpl implements UserService{
    
    @Autowired
    UserDao udao;
    
    @Autowired
    private BCryptPasswordEncoder passwordEncoder;


    
    @Override
    public User findByUsername(String username) {
        return udao.findByUsername(username);
    }

    @Override
    public void save(User user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        udao.save(user);
    }

    @Override
    public UserDetails loadUserByUsername(String string) throws UsernameNotFoundException {
        
        User user  = udao.findByUsername(string);
        if(user == null){
            throw new UsernameNotFoundException("Invalid Username");
        }
        UserDetails userDetails = new org.springframework.security.core.userdetails.User(user.getUsername(),
                user.getPassword(),
                mapRolesToAuthorities(user.getRoles()));
                
        return userDetails; 
    }
    
    private List<? extends GrantedAuthority> mapRolesToAuthorities(List<Role> roles){
        
        List<GrantedAuthority> authorities = new ArrayList();
        for(Role r: roles){
            SimpleGrantedAuthority sga = new SimpleGrantedAuthority(r.getRname());
            authorities.add(sga);
        }
        return authorities;
    }
    
}
