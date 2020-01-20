package com.gymgroup.service;

import com.gymgroup.entities.ShipmentInfo;

import java.util.List;

public interface ShipmentInfoService {

    void save(ShipmentInfo shipmentinfo);

    List<ShipmentInfo> findAll();
}
