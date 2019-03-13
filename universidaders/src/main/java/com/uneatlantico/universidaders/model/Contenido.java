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

    @Column(name="id_asignaturas")
    private Integer idAsignatura;

    @Column(name="contenido")
    private String contenidos;

    public Integer getIdAsignatura() {
        return idAsignatura;
    }

    public void setIdAsignatura(Integer idAsignatura) {
        this.idAsignatura = idAsignatura;
    }


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContenidos() {
        return contenidos;
    }

    public void setContenidos(String contenidos) {
        this.contenidos = contenidos;
    }


}
