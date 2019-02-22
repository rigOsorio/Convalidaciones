package com.uneatlantico.model;
import javax.persistence.*;

@Entity
@Table(name="tb_contenido_otos")
public class ContenidoOtros {

	@Id
	@Column(name="id")
	private Integer id;
	
	@Column(name="contenido")
	private String contenido;
	
	@Column(name="id_asignatura")
	private Integer idAsignatura;
	
	public ContenidoOtros() {
		
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getContenido() {
		return contenido;
	}

	public void setContenido(String contenido) {
		this.contenido = contenido;
	}

	public Integer getIdAsignatura() {
		return idAsignatura;
	}

	public void setIdAsignatura(Integer idAsignatura) {
		this.idAsignatura = idAsignatura;
	}
}
