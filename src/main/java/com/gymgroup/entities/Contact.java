package com.gymgroup.entities;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.NotEmpty;
import java.util.Objects;

@Entity
public class Contact {
    private int contactId;
    private String contactEmail;
    private String contactName;
    private String contactMessage;


    public Contact() {
    }

    public Contact(String contactEmail, String contactName, String contactMessage) {
        this.contactEmail = contactEmail;
        this.contactName = contactName;
        this.contactMessage = contactMessage;
    }

    @Id
    @Column(name = "contactId", nullable = false)
    public int getContactId() {
        return contactId;
    }

    public void setContactId(int contactId) {
        this.contactId = contactId;
    }

    @NotEmpty
    @Basic
    @Column(name = "contact_email", nullable = false, length = 55)
    public String getContactEmail() {
        return contactEmail;
    }

    public void setContactEmail(String contactEmail) {
        this.contactEmail = contactEmail;
    }

    @NotEmpty
    @Basic
    @Column(name = "contact_name", nullable = false, length = 40)
    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName;
    }

    @NotEmpty
    @Basic
    @Column(name = "contact_message", nullable = false, length = 2500)
    public String getContactMessage() {
        return contactMessage;
    }

    public void setContactMessage(String contactMessage) {
        this.contactMessage = contactMessage;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Contact contact = (Contact) o;
        return contactId == contact.contactId &&
                Objects.equals(contactEmail, contact.contactEmail) &&
                Objects.equals(contactName, contact.contactName) &&
                Objects.equals(contactMessage, contact.contactMessage);
    }

    @Override
    public int hashCode() {
        return Objects.hash(contactId, contactEmail, contactName, contactMessage);
    }
}
