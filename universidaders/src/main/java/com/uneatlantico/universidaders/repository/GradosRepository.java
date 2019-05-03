package com.uneatlantico.universidaders.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import com.uneatlantico.universidaders.model.Grados;
//Creamos el repositorio y debe extender de JpaRepository para heredar todos los métodos de JPA
//le pasamos el nombre de la tabla entity a la cual va a hacer referencia y el tipo de variable del id
public interface GradosRepository extends JpaRepository<Grados, Integer>{
	//El método retorunara una lista de Grados segun el IdUniversidad que le pasemos
	List<Grados> findByidUniversidad(Integer idUniversidad);
}
