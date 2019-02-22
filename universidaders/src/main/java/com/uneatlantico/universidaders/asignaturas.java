package com.uneatlantico.universidaders;

import javax.persistence.*;

@Entity
@Table(name="tb_asignaturas", catalog="db_universidades3")
public class asignaturas {

	@Id
	@Column(name="id")
	private Integer Id;
	
	@Column(name="nombre_asignatura")
	private String nombreAsigantura;
	
	@Column(name="id_universidad")
	private Integer idUniversidad;
	
	@Column(name="creditos")
	private Integer creditos;
	
	@Column(name="por_creditos")
	private boolean ApruebaCreditos;
	
	@Column(name="por_outcom")
	private boolean ApruebaCompetencias;
	
	@Column(name="por_contenido")
	private boolean ApruebaContenido;
	
	@Column(name="id_outcom")
	private Integer idOutcom;
	
	//id de la asignatura con la que se compara
	@Column(name="id_asignatura")
	private Integer idAsiganturaEquivalente;
	
	public asignaturas() {
		
	}

	public Integer getId() {
		return Id;
	}

	public void setId(Integer id) {
		Id = id;
	}

	public String getNombreAsigantura() {
		return nombreAsigantura;
	}

	public void setNombreAsigantura(String nombreAsigantura) {
		this.nombreAsigantura = nombreAsigantura;
	}

	public Integer getIdUniversidad() {
		return idUniversidad;
	}

	public void setIdUniversidad(Integer idUniversidad) {
		this.idUniversidad = idUniversidad;
	}

	public Integer getCreditos() {
		return creditos;
	}

	public void setCreditos(Integer creditos) {
		this.creditos = creditos;
	}

	public boolean isApruebaCreditos() {
		return ApruebaCreditos;
	}

	public void setApruebaCreditos(boolean apruebaCreditos) {
		ApruebaCreditos = apruebaCreditos;
	}

	public boolean isApruebaCompetencias() {
		return ApruebaCompetencias;
	}

	public void setApruebaCompetencias(boolean apruebaCompetencias) {
		ApruebaCompetencias = apruebaCompetencias;
	}

	public boolean isApruebaContenido() {
		return ApruebaContenido;
	}

	public void setApruebaContenido(boolean apruebaContenido) {
		ApruebaContenido = apruebaContenido;
	}

	public Integer getIdOutcom() {
		return idOutcom;
	}

	public void setIdOutcom(Integer idOutcom) {
		this.idOutcom = idOutcom;
	}

	public Integer getIdAsiganturaEquivalente() {
		return idAsiganturaEquivalente;
	}

	public void setIdAsiganturaEquivalente(Integer idAsiganturaEquivalente) {
		this.idAsiganturaEquivalente = idAsiganturaEquivalente;
	}
}
