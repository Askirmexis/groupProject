package com.gymgroup.dao;

import com.gymgroup.entities.Contact;

import java.util.List;

public interface ContactDao {

    void save (Contact contact);

    List<Contact> findAllMessages();
}
