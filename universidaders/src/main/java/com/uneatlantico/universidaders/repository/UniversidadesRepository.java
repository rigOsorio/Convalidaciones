package com.uneatlantico.Universidaders.repository;

import com.uneatlantico.Universidaders.model.Universidades;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UniversidadesRepository extends JpaRepository<Universidades, Integer> {
    List<Universidades> findBynombreUniversidad(String nombreUniversidad);
}
