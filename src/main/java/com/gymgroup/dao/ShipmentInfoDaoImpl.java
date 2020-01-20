package com.gymgroup.dao;


import com.gymgroup.entities.ShipmentInfo;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import org.springframework.stereotype.Repository;


@Repository
public class ShipmentInfoDaoImpl implements ShipmentInfoDao {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    @Override
    public void save(ShipmentInfo shipmentinfo) {
        getSession().save(shipmentinfo);
    }

    @Override
    public List<ShipmentInfo> findAll() {
        Query q = getSession().createQuery("SELECT s FROM ShipmentInfo s");
        List<ShipmentInfo> list = q.getResultList();
        return list;
    }

}
