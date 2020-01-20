package com.gymgroup.controller;


import com.gymgroup.dao.RoleDao;
import com.gymgroup.entities.Contact;
import com.gymgroup.entities.User;
import com.gymgroup.service.ContactService;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping("/contact")
public class ContactController {



    @Autowired
    ContactService contactService;


    @GetMapping()
    public String showRegistrationForm(Model c,Model u ) {
        c.addAttribute("contact", new Contact());
//        u.addAttribute("user",)
        return "/contact-form";
    }

    @PostMapping("/messageSubmission")
    public String messageSubmission(@Valid @ModelAttribute("contact") Contact contact, BindingResult result, Model m) {
        if (result.hasErrors()) {
            return "contact-form";
        } else
            contactService.save(contact);
        return "contact-confirmation";
    }
}
