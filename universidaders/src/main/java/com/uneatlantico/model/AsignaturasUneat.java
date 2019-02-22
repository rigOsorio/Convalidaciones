package com.uneatlantico.model;
import javax.persistence.*;

@Entity
@Table(name="tb_uneatlantico")
public class AsignaturasUneat {

	@Id
	@Column(name="id")
	private Integer id;
	
	@Column(name="nombre_asignatura")
	private String nombreAsinatura;
	
	@Column(name="creditos")
	private Integer creditos;
	
	@Column(name="id_outcom")
	private Integer idCompetencias;
	
	public AsignaturasUneat() {
		
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNombreAsinatura() {
		return nombreAsinatura;
	}

	public void setNombreAsinatura(String nombreAsinatura) {
		this.nombreAsinatura = nombreAsinatura;
	}

	public Integer getCreditos() {
		return creditos;
	}

	public void setCreditos(Integer creditos) {
		this.creditos = creditos;
	}

	public Integer getIdCompetencias() {
		return idCompetencias;
	}

	public void setIdCompetencias(Integer idCompetencias) {
		this.idCompetencias = idCompetencias;
	}
}