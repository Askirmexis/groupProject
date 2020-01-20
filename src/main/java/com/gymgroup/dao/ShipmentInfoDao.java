package com.gymgroup.dao;

import com.gymgroup.entities.ShipmentInfo;

import java.util.List;

public interface ShipmentInfoDao {

    void save(ShipmentInfo shipmentinfo);

    List<ShipmentInfo> findAll();

}
