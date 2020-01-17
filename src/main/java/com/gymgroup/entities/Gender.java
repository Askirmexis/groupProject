package com.gymgroup.entities;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Gender {
    private int genderId;
    private String genders;

    @Id
    @Column(name = "genderID", nullable = false)
    public int getGenderId() {
        return genderId;
    }

    public void setGenderId(int genderId) {
        this.genderId = genderId;
    }

    @Basic
    @Column(name = "genders", nullable = false, length = 10)
    public String getGenders() {
        return genders;
    }

    public void setGenders(String genders) {
        this.genders = genders;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Gender gender = (Gender) o;

        if (genderId != gender.genderId) return false;
        if (genders != null ? !genders.equals(gender.genders) : gender.genders != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = genderId;
        result = 31 * result + (genders != null ? genders.hashCode() : 0);
        return result;
    }
}
