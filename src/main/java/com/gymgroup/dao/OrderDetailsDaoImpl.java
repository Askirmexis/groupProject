/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gymgroup.dao;

import com.gymgroup.entities.Orderdetails;
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
public class OrderDetailsDaoImpl implements OrderDetailsDao{
    
    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession() {
        return sessionFactory.getCurrentSession();
    }
    
    @Override
    public void save(Orderdetails orderDetails) {
        getSession().save(orderDetails);
    }

    @Override
    public List<Orderdetails> findAll() {
        Query q = getSession().createQuery("SELECT o FROM orderdetails o");
        List<Orderdetails> list = q.getResultList();
        return list;
    }
    
}
