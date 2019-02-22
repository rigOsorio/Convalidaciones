package com.uneatlantico.model;
import javax.persistence.*;

@Entity
public class Competencias {

	@Id
	@Column(name="id")
	private Integer id;
	
	@Column(name="nombre_outcom")
	private String nombre_Competencia;
	
	@Column(name="descripcion")
	private String descripcion;
	
	public Competencias() {
		
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNombre_Competencia() {
		return nombre_Competencia;
	}

	public void setNombre_Competencia(String nombre_Competencia) {
		this.nombre_Competencia = nombre_Competencia;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
}
