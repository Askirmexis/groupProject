package com.gymgroup.entities;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Sizes {
    private int sizesId;
    private String sizes;

    @Id
    @Column(name = "sizesID", nullable = false)
    public int getSizesId() {
        return sizesId;
    }

    public void setSizesId(int sizesId) {
        this.sizesId = sizesId;
    }

    @Basic
    @Column(name = "sizes", nullable = true, length = 20)
    public String getSizes() {
        return sizes;
    }

    public void setSizes(String sizes) {
        this.sizes = sizes;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Sizes sizes1 = (Sizes) o;

        if (sizesId != sizes1.sizesId) return false;
        if (sizes != null ? !sizes.equals(sizes1.sizes) : sizes1.sizes != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = sizesId;
        result = 31 * result + (sizes != null ? sizes.hashCode() : 0);
        return result;
    }
}
