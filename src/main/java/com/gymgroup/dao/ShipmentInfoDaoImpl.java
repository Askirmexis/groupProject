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
        
        int id=(Integer)getSession().save(shipmentinfo);
        System.out.println("00000000000000000000shipmentinfo========="+id);
        Query q = getSession().createNativeQuery("SELECT shipid from shipmentinfo where email = 'asda'");
        List<Integer> list = q.getResultList();
        System.out.println("LIST : " + list);
    }

    @Override
    public List<ShipmentInfo> findAll() {
        Query q = getSession().createQuery("SELECT s FROM ShipmentInfo s");
        List<ShipmentInfo> list = q.getResultList();
        return list;
    }

}
