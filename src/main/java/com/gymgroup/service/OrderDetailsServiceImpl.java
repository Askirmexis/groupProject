/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gymgroup.service;

import com.gymgroup.dao.OrderDetailsDao;
import com.gymgroup.entities.Orderdetails;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Alex
 */
@Service
@Transactional
public class OrderDetailsServiceImpl implements OrderDetailsService{
    
    @Autowired
    OrderDetailsDao odao;
    
    @Override
    public void save(Orderdetails orderDetails) {
        odao.save(orderDetails);
    }

    @Override
    public List<Orderdetails> findAll() {
        return odao.findAll();
    }
    
}

    