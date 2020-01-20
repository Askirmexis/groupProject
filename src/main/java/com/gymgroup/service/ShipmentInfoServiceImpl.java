package com.gymgroup.service;

import com.gymgroup.dao.ShipmentInfoDao;
import com.gymgroup.entities.ShipmentInfo;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class ShipmentInfoServiceImpl implements ShipmentInfoService {

    @Autowired
    ShipmentInfoDao dao;

    @Override
    public void save(ShipmentInfo shipmentinfo) {
        dao.save(shipmentinfo);
    }

    @Override
    public List<ShipmentInfo> findAll() {
        return dao.findAll();
    }
}
