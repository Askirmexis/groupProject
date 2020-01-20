/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.gymgroup.service;

import com.gymgroup.dao.ProductDao;
import com.gymgroup.entities.Product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class ProductServiceImpl implements ProductService {

    @Autowired
    ProductDao pdao;

    @Override
    public List<Product> getAllProducts() {
        return pdao.findAll();
    }

    @Override
    public Product findProductById(Integer id) {
        return pdao.findById(id);
    }

    @Override
    public List<Product> getTreadmills() {
        return pdao.findTreadmills();
    }

    @Override
    public List<Product> getElliptical() {
        return pdao.findElliptical();
    }

    @Override
    public List<Product> getBikes() {
        return pdao.findBikes();
    }

    @Override
    public List<Product> getBenches() {
        return pdao.findBenches();
    }


    @Override
    public List<Product> getRowers() {
        return pdao.findRowers();
    }

    @Override
    public List<Product> getWeightBars() {
        return null;
    }


    @Override
    public List<Product> getKettlebell() {
        return pdao.findKettlebell();
    }

    @Override
    public List<Product> getDumbbell() {
        return pdao.findDumbbell();
    }

    @Override
    public List<Product> getMultigyms() {
        return pdao.findMultigyms();
    }

    @Override
    public List<Product> getTools() {
        return pdao.findTools();
    }

    @Override
    public List<Product> getCardio() {
        return pdao.findCardio();
    }

    @Override
    public List<Product> getStrength() {
        return pdao.findStrength();
    }

    @Override
    public List<Product> getFunctionality() {
        return pdao.findFunctionality();
    }

}
