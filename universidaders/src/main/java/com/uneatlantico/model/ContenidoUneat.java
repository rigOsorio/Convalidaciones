package com.uneatlantico.model;
import javax.persistence.*;

@Entity
@Table(name="tb_contenido", catalog="db_universidades3")
public class ContenidoUneat {

	@Id
	@Column(name="id")
	private Integer id;
	
	@Column(name="nombre_contenido")
	private String contendido;
	
	//id de la asignatrua que pertenece el contenido
	@Column(name="id_asignatura")
	private Integer idAsignatura;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getContendido() {
		return contendido;
	}

	public void setContendido(String contendido) {
		this.contendido = contendido;
	}

	public Integer getIdAsignatura() {
		return idAsignatura;
	}

	public void setIdAsignatura(Integer idAsignatura) {
		this.idAsignatura = idAsignatura;
	}

	public ContenidoUneat() {
		
	}
}
