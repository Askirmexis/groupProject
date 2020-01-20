package com.gymgroup.dao;

import com.gymgroup.entities.Categories;

import java.util.List;

public interface CategoriesDao {

    List<Categories> findAll();
}
