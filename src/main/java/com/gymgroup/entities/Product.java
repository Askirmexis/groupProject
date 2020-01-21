package com.gymgroup.entities;

import javax.persistence.*;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Objects;

@Entity
public class Product implements Serializable {
    private Integer productId;
    private String name;
    private String description;
    private BigDecimal price;
    private Integer stock;
    private Brand brandByBrandId;
    private Gender genderByGenderId;
    private Categories categoriesByCategoryId;
    private Tags tagsByTagsId;
    private Links linksByProductId;
    private String Thumbnail;
    private String pic2;
    private String pic3;
    
    

    public Product(String name, int price) {
        this.name=name;
        this.price= BigDecimal.valueOf(price);
    }

    public Product() {
    }

    @Id
    @Column(name = "productID", nullable = false)
    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    @Basic
    @Column(name = "name", nullable = true, length = 100)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "description", nullable = true, length = 1000)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "price", nullable = false, precision = 2)
    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    @Basic
    @Column(name = "stock", nullable = false)
    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    @Basic
    @Column(name = "thumbnail", nullable = true)
    public String getThumbnail() {
        return Thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        Thumbnail = thumbnail;
    }
    @Basic
    @Column(name = "pic2", nullable = true)
    public String getPic2() {
        return pic2;
    }

    public void setPic2(String pic2) {
        this.pic2 = pic2;
    }
    @Basic
    @Column(name = "pic3", nullable = true)
    public String getPic3() {
        return pic3;
    }

    public void setPic3(String pic3) {
        this.pic3 = pic3;
    }
    
    

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Product products = (Product) o;
        return Objects.equals(productId, products.productId) &&
                Objects.equals(name, products.name) &&
                Objects.equals(description, products.description) &&
                Objects.equals(price, products.price) &&
                Objects.equals(stock, products.stock);
    }

    @Override
    public int hashCode() {
        return Objects.hash(productId, name, description, price, stock);
    }

    @ManyToOne
    @JoinColumn(name = "brandID", referencedColumnName = "brandID", nullable = false)
    public Brand getBrandByBrandId() {
        return brandByBrandId;
    }

    public void setBrandByBrandId(Brand brandByBrandId) {
        this.brandByBrandId = brandByBrandId;
    }

    @ManyToOne
    @JoinColumn(name = "genderID", referencedColumnName = "genderID", nullable = false)
    public Gender getGenderByGenderId() {
        return genderByGenderId;
    }

    public void setGenderByGenderId(Gender genderByGenderId) {
        this.genderByGenderId = genderByGenderId;
    }

    @ManyToOne
    @JoinColumn(name = "categoryID", referencedColumnName = "categoryID", nullable = false)
    public Categories getCategoriesByCategoryId() {
        return categoriesByCategoryId;
    }

    public void setCategoriesByCategoryId(Categories categoriesByCategoryId) {
        this.categoriesByCategoryId = categoriesByCategoryId;
    }

    @ManyToOne
    @JoinColumn(name = "tagID", referencedColumnName = "tagID", nullable = false)
    public Tags getTagsByTagsId() {
        return tagsByTagsId;
    }

    public void setTagsByTagsId(Tags tagsByTagsId) {
        this.tagsByTagsId = tagsByTagsId;
    }


    @Override
    public String toString() {
        return "Product{" +
                "name='" + name + '\'' +
                ", price=" + price +
                '}';
    }
}
