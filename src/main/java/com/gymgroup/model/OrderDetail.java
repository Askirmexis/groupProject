package com.gymgroup.model;

import com.gymgroup.entities.Product;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class OrderDetail {
    private List<Product> products = new ArrayList();
    private String productName;
    private double subtotal;
    private float shipping;
    private float tax;
    private double total;

    public OrderDetail() {
    }

    public OrderDetail(String productName, String subtotal,
            String shipping, String tax, String total) {
        this.productName = productName;
        this.subtotal = Double.parseDouble(subtotal);
        this.shipping = Float.parseFloat(shipping);
        this.tax = Float.parseFloat(tax);
        this.total = Double.parseDouble(total);
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    
    public String getProductName() {
        return productName;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }

    public float getShipping() {
        return shipping;
    }

    public void setShipping(float shipping) {
        this.shipping = shipping;
    }

    public float getTax() {
        return tax;
    }

    public void setTax(float tax) {
        this.tax = tax;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    //Paypal needs these values to be Strings
    public String getStringSubtotal() {
        return String.format("%.2f", subtotal);
    }

    public String getStringShipping() {
        return String.format("%.2f", shipping);
    }

    public String getStringTax() {
        return String.format("%.2f", tax);
    }

    public String getStringTotal() {
        return String.format("%.2f", total);
    }

    @Override
    public String toString() {
        return "OrderDetail{" + "productName=" + productName + ", subtotal=" + subtotal + ", shipping=" + shipping + ", tax=" + tax + ", total=" + total + '}'+"products:"+products.toString();
    }

    
    
}
