package com.uneatlantico.universidaders.repository;

import com.uneatlantico.universidaders.model.Contenido;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
//Creamos el repositorio y debe extender de JpaRepository para heredar todos los métodos de JPA
//le pasamos el nombre de la tabla entity a la cual va a hacer referencia y el tipo de variable del id
public interface ContenidoRepository extends JpaRepository<Contenido, Integer> {
    //El método retoruna una lista de Contenido que encontrara por el idAsignatura que le pasemos
    List<Contenido> findByidAsignatura(Integer idAsignatura);
}
