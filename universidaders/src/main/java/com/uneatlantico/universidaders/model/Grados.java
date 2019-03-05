package com.uneatlantico.universidaders.model;

import javax.persistence.*;

@Entity
@Table(name="tb_carreras",catalog="db_universidades3")
public class Grados {

	@Id
	@Column(name="id")
	private Integer id;
	@Column(name="nombre_Grado")
	private String 	nombreGrado;
	
	@Column(name="id_Universidad")
	private Integer idUniversidad;

	public Grados() {
		
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNombreGrado() {
		return nombreGrado;
	}

	public void setNombreGrado(String nombreGrado) {
		this.nombreGrado = nombreGrado;
	}

	public Integer getIdUniversidad() {
		return idUniversidad;
	}

	public void setIdUniversidad(Integer idUniversidad) {
		this.idUniversidad = idUniversidad;
	}

	
}
