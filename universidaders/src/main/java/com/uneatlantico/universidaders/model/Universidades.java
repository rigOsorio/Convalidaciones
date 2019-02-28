package com.uneatlantico.Universidaders.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tb_universidades", catalog = "db_universidades3")
public class Universidades {

    @Id
    @Column(name = "id")
    private Integer id;
    @Column(name = "nombre_universidad")
    private String nombreUniversidad;

    public Universidades() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombreUniversidad() {
        return nombreUniversidad;
    }

    public void setNombreUniversidad(String nombreUniversidad) {
        this.nombreUniversidad = nombreUniversidad;
    }
}
