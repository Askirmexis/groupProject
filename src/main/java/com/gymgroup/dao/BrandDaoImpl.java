package com.gymgroup.dao;

import com.gymgroup.entities.Brand;
import com.gymgroup.entities.Contact;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BrandDaoImpl implements BrandDao {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public List<Brand> findAll() {
        Query q = getSession().createQuery("SELECT b FROM Brand b");
        List<Brand> list = q.getResultList();
        return list;
    }
}

