package com.uneatlantico.universidaders.model;

import javax.persistence.*;

@Entity//la anotación Entity le premite a spring reconocer el tipo de clase que es, en este caso reconoce que hacemos referencia a una tabla de la base de datos.
@Table(name="tb_carreras",catalog="db_universidades3")//en name le pasamos el nombre de la tabla y en catalog el nombre de la base de datos
public class Grados {

	@Id//es para reconocer el id de la tabla
	@Column(name="id")//le decimose el nombre del atributo al que hace referencia la variable
	private Integer id;
	@Column(name="nombre_Grado")//le decimose el nombre del atributo al que hace referencia la variable
	private String 	nombreGrado;
	
	@Column(name="id_Universidad")//le decimose el nombre del atributo al que hace referencia la variable
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
