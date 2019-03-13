package com.uneatlantico.universidaders.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tb_contenido",catalog = "db_universidades3")
public class Contenido {
    @Id
    @Column(name="id")
    private Integer id;

    @Column(name = "nombre_asignatura")
    private String nombreAsignatura;

    @Column(name="creditos")
    private Integer creditoss;

    @Column(name="id_outcom")
    private Integer idOutcom;

    public Integer getCreditoss() {
        return creditoss;
    }

    public void setCreditoss(Integer creditoss) {
        this.creditoss = creditoss;
    }

    public Integer getIdOutcom() {
        return idOutcom;
    }

    public void setIdOutcom(Integer idOutcom) {
        this.idOutcom = idOutcom;
    }



    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombreAsignatura() {
        return nombreAsignatura;
    }

    public void setNombreAsignatura(String nombreAsignatura) {
        this.nombreAsignatura = nombreAsignatura;
    }
}
