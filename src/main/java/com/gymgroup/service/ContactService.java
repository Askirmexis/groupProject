package com.gymgroup.service;

import com.gymgroup.entities.Contact;

import java.util.List;

public interface ContactService {

    void save(Contact contact);

    List<Contact> findAllMessages();
}
