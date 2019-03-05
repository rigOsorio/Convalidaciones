package com.uneatlantico.universidaders.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.uneatlantico.universidaders.model.Universidades;

public interface UniversidadesRepository extends JpaRepository<Universidades, Integer> {
    Universidades findBynombreUniversidad(String nombreUniversidad);
}
