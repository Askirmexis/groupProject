package com.gymgroup.entities;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Brand {
    private int brandId;
    private String brands;

    @Id
    @Column(name = "brandID", nullable = false)
    public int getBrandId() {
        return brandId;
    }

    public void setBrandId(int brandId) {
        this.brandId = brandId;
    }

    @Basic
    @Column(name = "brands", nullable = false, length = 30)
    public String getBrands() {
        return brands;
    }

    public void setBrands(String brands) {
        this.brands = brands;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Brand brand = (Brand) o;

        if (brandId != brand.brandId) return false;
        if (brands != null ? !brands.equals(brand.brands) : brand.brands != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = brandId;
        result = 31 * result + (brands != null ? brands.hashCode() : 0);
        return result;
    }
}
