package com.gymgroup.service;

import com.gymgroup.dao.BrandDao;
import com.gymgroup.entities.Brand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class BrandServiceImpl implements BrandService {

    @Autowired
    BrandDao brandDao;

    @Override
    public List<Brand> findAll() {
        return brandDao.findAll();
    }
}
