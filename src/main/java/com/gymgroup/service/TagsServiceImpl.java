package com.gymgroup.service;

import com.gymgroup.dao.TagsDao;
import com.gymgroup.entities.Tags;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class TagsServiceImpl implements TagsService {

    @Autowired
    TagsDao dao;

    @Override
    public List<Tags> findAll() {
        return dao.findAll();
    }
}
