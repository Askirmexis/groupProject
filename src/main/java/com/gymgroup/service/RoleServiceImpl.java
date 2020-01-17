/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gymgroup.service;

import com.gymgroup.dao.RoleDao;
import com.gymgroup.entities.Role;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class RoleServiceImpl implements RoleService{
    
    @Autowired
    RoleDao rdao;
    
    @Override
    public List<Role> getRoles() {
        return rdao.findAll();
    }

    @Override
    public Role findById(Integer id) {
        return rdao.findById(id);
    }
    
}
