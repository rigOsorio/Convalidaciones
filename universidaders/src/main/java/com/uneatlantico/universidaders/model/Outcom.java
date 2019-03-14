package com.uneatlantico.universidaders.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tb_outcom",catalog = "db_universidades3")
public class Outcom {
    @Id
    @Column(name = "id")
    private Integer id;

    @Column(name="descripcion")
    private String descripcionOutcom;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDescripcionOutcom() {
        return descripcionOutcom;
    }

    public void setDescripcionOutcom(String descripcionOutcom) {
        this.descripcionOutcom = descripcionOutcom;
    }
}
