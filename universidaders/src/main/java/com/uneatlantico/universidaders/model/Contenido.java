package com.uneatlantico.universidaders.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity//la anotación Entity le premite a spring reconocer el tipo de clase que es, en este caso reconoce que hacemos referencia a una tabla de la base de datos.
@Table(name="tb_contenido",catalog = "db_universidades3")//en name le pasamos el nombre de la tabla y en catalog el nombre de la base de datos
public class Contenido {
    @Id//es para reconocer el id de la tabla
    @Column(name="id")//le decimose el nombre del atributo al que hace referencia la variable
    private Integer id;

    @Column(name="id_asignaturas")//le decimose el nombre del atributo al que hace referencia la variable
    private Integer idAsignatura;

    @Column(name="contenido")//le decimose el nombre del atributo al que hace referencia la variable
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
