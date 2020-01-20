package com.gymgroup.dao;

import com.gymgroup.entities.Role;
import com.gymgroup.entities.Tags;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TagsDaoImpl implements TagsDao {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public List<Tags> findAll() {
        Query q = getSession().createQuery("SELECT t FROM Tags t");
        List<Tags> list = q.getResultList();
        return list;
    }
}

