/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gymgroup.service;

import com.gymgroup.entities.Role;
import java.util.List;

/**
 *
 * @author Alex
 */
public interface RoleService {
    public List<Role> getRoles();

    public Role findById(Integer id);
}
