/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gymgroup.dao;

import com.gymgroup.entities.Product;

import java.util.List;

/**
 * @author Alex
 */
public interface ProductDao {

    public List<Product> findAll();

    public Product findById(Integer id);

    List<Product> findTreadmills();

    List<Product>  findBikes();

    List<Product>  findElliptical();

    //public List<Product> findProductsByName(String searchName);

}
