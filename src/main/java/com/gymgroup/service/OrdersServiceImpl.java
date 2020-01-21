/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gymgroup.service;

import com.gymgroup.dao.OrdersDao;
import com.gymgroup.entities.Orders;
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
public class OrdersServiceImpl implements OrdersService{
    
    @Autowired
    OrdersDao odao;
    
    @Override
    public void save(Orders order) {
        odao.save(order);
    }

    @Override
    public List<Orders> findAll() {
        return odao.findAll();
    }
    
}

   