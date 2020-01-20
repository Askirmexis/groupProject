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

    @Override
    public List<Product> findRowers() {
        Query q = getSession().createQuery("select  p from Product p where p.tagsByTagsId.tagID=4");
        List<Product> list = q.getResultList();
        return list;
    }

    @Override
    public List<Product> findBenches() {
        Query q = getSession().createQuery("select  p from Product p where p.tagsByTagsId.tagID=5");
        List<Product> list = q.getResultList();
        return list;
    }

    @Override
    public List<Product> findWeightBars() {
        Query q = getSession().createQuery("select  p from Product p where p.tagsByTagsId.tagID=6");
        List<Product> list = q.getResultList();
        return list;
    }

    @Override
    public List<Product> findKettlebell() {
        Query q = getSession().createQuery("select  p from Product p where p.tagsByTagsId.tagID=7");
        List<Product> list = q.getResultList();
        return list;
    }

    @Override
    public List<Product> findDumbbell() {
        Query q = getSession().createQuery("select  p from Product p where p.tagsByTagsId.tagID=8");
        List<Product> list = q.getResultList();
        return list;
    }

    @Override
    public List<Product> findMultigyms() {
        Query q = getSession().createQuery("select  p from Product p where p.tagsByTagsId.tagID=9");
        List<Product> list = q.getResultList();
        return list;
    }

    @Override
    public List<Product> findTools() {
        Query q = getSession().createQuery("select  p from Product p where p.tagsByTagsId.tagID=10");
        List<Product> list = q.getResultList();
        return list;
    }


    @Override
    public List<Product> findCardio() {
        Query q = getSession().createQuery("select  p from Product p where p.tagsByTagsId.tagID between 1 AND 3");
        List<Product> list = q.getResultList();
        return list;
    }

    @Override
    public List<Product> findStrength() {
        Query q = getSession().createQuery("select  p from Product p where p.tagsByTagsId.tagID  between  4 and 8");
        List<Product> list = q.getResultList();
        return list;
    }

    @Override
    public List<Product> findFunctionality() {
        Query q = getSession().createQuery("select  p from Product p where p.tagsByTagsId.tagID between 9 and 10");
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
