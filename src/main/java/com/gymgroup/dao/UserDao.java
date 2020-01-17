/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gymgroup.dao;

import com.gymgroup.entities.User;

/**
 *
 * @author Alex
 */
    public interface UserDao {
    public User findByUsername(String username);

    public void save(User user);
}
