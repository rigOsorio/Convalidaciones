package com.uneatlantico.universidaders.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tb_asignaturas",catalog="db_universidades3")
public class Asignaturas {
    @Id
    @Column(name="id")
    private Integer id;

    @Column(name="nombre_asignatura")
    private String nombreAsignatura;

    @Column(name="id_Grado")
    private Integer idGrado;

    @Column(name="creditos")
    private Integer creditoss;

    @Column(name="por_creditos")
    private boolean  apruebaPorCreditos;

    @Column(name="por_outcom")
    private boolean apruebaPorCompetencias;

    @Column(name="por_contenido")
    private boolean apruebaPorContenido;

    public Integer getIdAsigantura() {
        return idAsigantura;
    }

    public void setIdAsigantura(Integer idAsigantura) {
        this.idAsigantura = idAsigantura;
    }

    @Column(name="id_outcom")
    private Integer idOutcom;

    @Column(name="id_asignatura")
    private  Integer idAsigantura;

    @Column(name="aprueba")
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

    public boolean isApruebaPorCreditos() {
        return apruebaPorCreditos;
    }

    public void setApruebaPorCreditos(boolean apruebaPorCreditos) {
        this.apruebaPorCreditos = apruebaPorCreditos;
    }

    public boolean isApruebaPorCompetencias() {
        return apruebaPorCompetencias;
    }

    public void setApruebaPorCompetencias(boolean apruebaPorCompetencias) {
        this.apruebaPorCompetencias = apruebaPorCompetencias;
    }

    public boolean isApruebaPorContenido() {
        return apruebaPorContenido;
    }

    public void setApruebaPorContenido(boolean apruebaPorContenido) {
        this.apruebaPorContenido = apruebaPorContenido;
    }

    public Integer getIdOutcom() {
        return idOutcom;
    }

    public void setIdOutcom(Integer idOutcom) {
        this.idOutcom = idOutcom;
    }

}
