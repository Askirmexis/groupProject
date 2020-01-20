package com.gymgroup.service;


import com.gymgroup.dao.ContactDao;
import com.gymgroup.entities.Contact;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ContactServiceImpl implements ContactService {

    @Autowired
    ContactDao contactDao;

    @Override
    public void save(Contact contact) {
        contactDao.save(contact);
    }

    @Override
    public List<Contact> findAllMessages() {
       return contactDao.findAllMessages();

    }
}
