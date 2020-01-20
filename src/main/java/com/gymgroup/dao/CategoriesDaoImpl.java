package com.gymgroup.dao;

import com.gymgroup.entities.Categories;
import com.gymgroup.entities.Contact;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import java.util.List;

public class CategoriesDaoImpl implements CategoriesDao {


    private SessionFactory sessionFactory;

    private Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public List<Categories> findAll() {
        Query q = getSession().createQuery("SELECT c FROM Contact c");
        List<Categories> list = q.getResultList();
        return list;
    }
}
