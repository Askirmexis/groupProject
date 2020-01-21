/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gymgroup.dao;

import com.gymgroup.entities.Orders;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Alex
 */
@Repository
public class OrdersDaoImpl implements OrdersDao{
    
    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession() {
        return sessionFactory.getCurrentSession();
    }
    
    @Override
    public void save(Orders order) {
        getSession().save(order);
    }

    @Override
    public List<Orders> findAll() {
        Query q = getSession().createQuery("SELECT o FROM Orders o");
        List<Orders> list = q.getResultList();
        return list;
    }
    
}
    