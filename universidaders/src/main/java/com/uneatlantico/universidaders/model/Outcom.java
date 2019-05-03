package com.uneatlantico.universidaders.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity//la anotación Entity le premite a spring reconocer el tipo de clase que es, en este caso reconoce que hacemos referencia a una tabla de la base de datos.
@Table(name="tb_outcom",catalog = "db_universidades3")//en name le pasamos el nombre de la tabla y en catalog el nombre de la base de datos
public class Outcom {
    @Id//es para reconocer el id de la tabla
    @Column(name = "id")//le decimose el nombre del atributo al que hace referencia la variable
    private Integer id;

    @Column(name="descripcion")//le decimose el nombre del atributo al que hace referencia la variable
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
