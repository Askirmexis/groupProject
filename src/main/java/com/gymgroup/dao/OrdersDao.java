/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gymgroup.dao;

import com.gymgroup.entities.Orders;
import java.util.List;

/**
 *
 * @author Alex
 */
public interface OrdersDao {
    
    void save(Orders order);

    List<Orders> findAll();
}
