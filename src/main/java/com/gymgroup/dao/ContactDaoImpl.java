package com.gymgroup.dao;

import com.gymgroup.entities.Contact;
import com.gymgroup.entities.Role;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class ContactDaoImpl implements ContactDao {


    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession() {
        return sessionFactory.getCurrentSession();
    }


    @Override
    public void save(Contact contact) {
        getSession().save(contact);

    }

    @Override
    public List<Contact> findAllMessages() {
        Query q = getSession().createQuery("SELECT c FROM Contact c");
        List<Contact> list = q.getResultList();
        return list;
    }
}
