package com.gymgroup.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;


@Entity
public class Orders implements Serializable{

    private int oid;
    private Timestamp dateTime;
    private double totalprice;
    private ShipmentInfo shipmentInfoByShipmentid;
    

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "oid", nullable = false)
    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }
    
    @Basic
    @Column(name = "totalprice", nullable = false)
    public double getTotalPrice(){
        return totalprice;
    }
    
    public void setTotalPrice(double totalprice){
        this.totalprice = totalprice;
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
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Orders other = (Orders) obj;
        if (this.oid != other.oid) {
            return false;
        }
        if (this.totalprice != other.totalprice) {
            return false;
        }
        if (!Objects.equals(this.dateTime, other.dateTime)) {
            return false;
        }
        if (!Objects.equals(this.shipmentInfoByShipmentid, other.shipmentInfoByShipmentid)) {
            return false;
        }
        
        return true;
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

    @Override
    public String toString() {
        return "Orders{" + "oid=" + oid + ", dateTime=" + dateTime + ", totalprice=" + totalprice + ", shipmentInfoByShipmentid=" + shipmentInfoByShipmentid + '}';
    }

   
  
}


