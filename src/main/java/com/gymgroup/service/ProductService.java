/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gymgroup.service;

import com.gymgroup.entities.Product;
import java.util.List;

/**
 *
 * @author Alex
 */
public interface ProductService {
    List<Product> getAllProducts();

    public Product findProductById(Integer id);
    List<Product> getTreadmills();

    List<Product> getElliptical();
    List<Product> getBikes();




    //public List<Product> findProductsByName(String searchName);
}
