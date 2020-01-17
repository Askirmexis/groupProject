/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gymgroup.dao;

import com.gymgroup.entities.Role;
import com.gymgroup.entities.User;

import javax.persistence.NoResultException;

import net.bytebuddy.asm.Advice;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Alex
 */
@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Autowired
    private RoleDao rdao;

    private Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public User findByUsername(String username) {
        Query q = getSession().createQuery("SELECT u from User u WHERE u.username = :name");
        q.setParameter("name", username);
        User user = null;
        try {
            user = (User) q.getSingleResult();
        } catch (NoResultException e) {
            System.out.println("There is no result");
            user = null;
        }

        return user;
    }

    @Override
    public void save(User user) {
        Role role = rdao.findById(2);
        List<Role> roles = new ArrayList<>();
        roles.add(role);
        user.setRoles(roles);
       getSession().save(user);
//         Query q = getSession().
//                 createNativeQuery("insert into user_role(uid,rid) values(:userid,2)");
//         q.setParameter("userid", user.getUserID());
    }

}
