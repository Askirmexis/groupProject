package com.gymgroup.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
public class Orders implements Serializable{

    private int oid;
    private Timestamp dateTime;
    private ShipmentInfo shipmentInfoByShipmentid;
    private Orderdetails orderdetailsByOdid;

    @Id
    @Column(name = "oid", nullable = false)
    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    @Basic
    @Column(name = "date_time", nullable = false)
    public Timestamp getDateTime() {
        return dateTime;
    }

    public void setDateTime(Timestamp dateTime) {
        this.dateTime = dateTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Orders orders = (Orders) o;
        return oid == orders.oid
                && Objects.equals(dateTime, orders.dateTime);
    }

    @Override
    public int hashCode() {
        return Objects.hash(oid, dateTime);
    }

    @ManyToOne
    @JoinColumn(name = "shipmentid", referencedColumnName = "shipid", nullable = false)
    public ShipmentInfo getShipmentInfoByShipmentid() {
        return shipmentInfoByShipmentid;
    }

    public void setShipmentInfoByShipmentid(ShipmentInfo shipmentInfoByShipmentid) {
        this.shipmentInfoByShipmentid = shipmentInfoByShipmentid;
    }

    @ManyToOne
    @JoinColumn(name = "odid", referencedColumnName = "detailid", nullable = false)
    public Orderdetails getOrderdetailsByOdid() {
        return orderdetailsByOdid;
    }

    public void setOrderdetailsByOdid(Orderdetails orderdetailsByOdid) {
        this.orderdetailsByOdid = orderdetailsByOdid;
    }
}
