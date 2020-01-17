/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gymgroup.dao;

import com.gymgroup.entities.Product;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * @author Alex
 */
@Repository
public class ProductDaoImpl implements ProductDao {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession() {
        return sessionFactory.getCurrentSession();
    }


    public List<Product> findAll() {
        Query q = getSession().createQuery("SELECT p FROM Product p");
        List<Product> list = q.getResultList();
        return list;
    }

    @Override
    public Product findById(Integer id) {
        return (Product) getSession().get(Product.class, id);
    }

    @Override
    public List<Product> findTreadmills() {
        Query q = getSession().createQuery("select  p from Product p where p.tagsByTagsId.tagID=1");
        List<Product> list = q.getResultList();
        return list;
    }

    @Override
    public List<Product> findElliptical() {
        Query q = getSession().createQuery("select  p from Product p where p.tagsByTagsId.tagID=2");
        List<Product> list = q.getResultList();
        return list;
    }

    @Override
    public List<Product> findBikes() {
        Query q = getSession().createQuery("select  p from Product p where p.tagsByTagsId.tagID=3");
        List<Product> list = q.getResultList();
        return list;
    }


//    @Override
//    public List<Product> findProductsByName(String searchName) {
//        Query q = getSession().createNamedQuery("Product.findLikeName");
//        q.setParameter("name", "%"+searchName+"%");
//        List<Product> list = q.getResultList();
//        return list;
//        
//    }


}
