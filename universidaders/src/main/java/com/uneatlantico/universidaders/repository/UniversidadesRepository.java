package com.uneatlantico.universidaders.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.uneatlantico.universidaders.model.Universidades;
//Creamos el repositorio y debe extender de JpaRepository para heredar todos los métodos de JPA
//le pasamos el nombre de la tabla entity a la cual va a hacer referencia y el tipo de variable del id
public interface UniversidadesRepository extends JpaRepository<Universidades, Integer> {
    //El método retornara un objeto de tipo Universidad segun el nombre que le pasemos
    Universidades findBynombreUniversidad(String nombreUniversidad);
}
