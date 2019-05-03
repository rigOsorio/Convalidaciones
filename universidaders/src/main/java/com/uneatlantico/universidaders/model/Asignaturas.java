package com.uneatlantico.universidaders.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity//la anotación Entity le premite a spring reconocer el tipo de clase que es, en este caso reconoce que hacemos referencia a una tabla de la base de datos.
@Table(name="tb_asignaturas",catalog="db_universidades3")//en name le pasamos el nombre de la tabla y en catalog el nombre de la base de datos
public class Asignaturas {
    @Id//es para reconocer el id de la tabla
    @Column(name="id")//le decimose el nombre del atributo al que hace referencia la variable
    private Integer id;

    @Column(name="nombre_asignatura")//le decimose el nombre del atributo al que hace referencia la variable
    private String nombreAsignatura;

    @Column(name="id_Grado")//le decimose el nombre del atributo al que hace referencia la variable
    private Integer idGrado;

    @Column(name="creditos")//le decimose el nombre del atributo al que hace referencia la variable
    private Integer creditoss;

    @Column(name="por_creditos")//le decimose el nombre del atributo al que hace referencia la variable
    private Integer  apruebaPorCreditos;

    @Column(name="por_outcom")//le decimose el nombre del atributo al que hace referencia la variable
    private Integer apruebaPorCompetencias;

    @Column(name="por_contenido")//le decimose el nombre del atributo al que hace referencia la variable
    private Integer apruebaPorContenido;

    public Integer getIdAsigantura() {
        return idAsigantura;
    }

    public void setIdAsigantura(Integer idAsigantura) {
        this.idAsigantura = idAsigantura;
    }

    @Column(name="id_outcom")//le decimose el nombre del atributo al que hace referencia la variable
    private Integer idOutcom;

    @Column(name="id_asignatura")//le decimose el nombre del atributo al que hace referencia la variable
    private  Integer idAsigantura;

    @Column(name="aprueba")//le decimose el nombre del atributo al que hace referencia la variable
    private Integer validacion;

    public Integer getValidacion() {
        return validacion;
    }

    public void setValidacion(Integer validacion) {
        this.validacion = validacion;
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

    public Integer getIdGrado() {
        return idGrado;
    }

    public void setIdGrado(Integer idGrado) {
        this.idGrado = idGrado;
    }

    public Integer getCreditoss() {
        return creditoss;
    }

    public void setCreditoss(Integer creditoss) {
        this.creditoss = creditoss;
    }

    public Integer isApruebaPorCreditos() {
        return apruebaPorCreditos;
    }

    public void setApruebaPorCreditos(Integer apruebaPorCreditos) {
        this.apruebaPorCreditos = apruebaPorCreditos;
    }

    public Integer isApruebaPorCompetencias() {
        return apruebaPorCompetencias;
    }

    public void setApruebaPorCompetencias(Integer apruebaPorCompetencias) {
        this.apruebaPorCompetencias = apruebaPorCompetencias;
    }

    public Integer isApruebaPorContenido() {
        return apruebaPorContenido;
    }

    public void setApruebaPorContenido(Integer apruebaPorContenido) {
        this.apruebaPorContenido = apruebaPorContenido;
    }

    public Integer getIdOutcom() {
        return idOutcom;
    }

    public void setIdOutcom(Integer idOutcom) {
        this.idOutcom = idOutcom;
    }

}
