package com.gymgroup.entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Objects;

@Entity
public class Orderdetails implements Serializable{
    private int detailid;
    private int productid;
    private int quantity;

    @Id
    @Column(name = "detailid", nullable = false)
    public int getDetailid() {
        return detailid;
    }

    public void setDetailid(int detailid) {
        this.detailid = detailid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Orderdetails that = (Orderdetails) o;
        return detailid == that.detailid;
    }

    @Override
    public int hashCode() {
        return Objects.hash(detailid);
    }

    @Basic
    @Column(name = "productid", nullable = false)
    public int getProductid() {
        return productid;
    }

    public void setProductid(int productid) {
        this.productid = productid;
    }

    @Basic
    @Column(name = "quantity", nullable = false)
    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
