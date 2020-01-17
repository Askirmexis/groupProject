package com.gymgroup.entities;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.Objects;

@Entity
public class Tags {
    private Integer tagID;
    private String tagsName;

    @Id
    @Column(name = "tagID", nullable = false)
    public Integer getTagID() {
        return tagID;
    }

    public void setTagID(Integer tagID) {
        this.tagID = tagID;
    }

    @Basic
    @Column(name = "tagsname", nullable = true, length = 40)
    public String getTagsName() {
        return tagsName;
    }

    public void setTagsName(String tagsName) {
        this.tagsName = tagsName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Tags tags = (Tags) o;
        return Objects.equals(tagID, tags.tagID) &&
                Objects.equals(tagsName, tags.tagsName);
    }

    @Override
    public int hashCode() {
        return Objects.hash(tagID, tagsName);
    }
}
