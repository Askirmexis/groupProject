package com.gymgroup.entities;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Links {
    private int linksId;
    private String url;

    @Id
    @Column(name = "linksID", nullable = false)
    public int getLinksId() {
        return linksId;
    }

    public void setLinksId(int linksId) {
        this.linksId = linksId;
    }

    @Basic
    @Column(name = "url", nullable = true, length = 300)
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Links links = (Links) o;

        if (linksId != links.linksId) return false;
        if (url != null ? !url.equals(links.url) : links.url != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = linksId;
        result = 31 * result + (url != null ? url.hashCode() : 0);
        return result;
    }
}
