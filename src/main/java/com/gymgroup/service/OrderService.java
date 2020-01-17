package com.gymgroup.service;


import com.gymgroup.entities.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class OrderService {

    @Autowired
    ProductService service;

    public List<Product> getProducts() {
        return service.getAllProducts();
    }



    public Product getProductByName(String name) {
        for (Product p : service.getAllProducts()) {
            if (p.getName().equals(name)) {
                return p;
            }
        }
        return null;
    }

    public OrderDetail prepareOrderDetail(OrderDetail orderDetail) {
        float subtotal = 0.0f;
        for (Product p : orderDetail.getProducts()) {
            subtotal += subtotal + p.getPrice().floatValue();
        }
        orderDetail.setProductName(orderDetail.getProducts().toString());
        orderDetail.setSubtotal(subtotal);
        orderDetail.setShipping(2f);
        orderDetail.setTax(5f);
        orderDetail.setTotal(subtotal + 2 + 5);
        return orderDetail;
    }
}
