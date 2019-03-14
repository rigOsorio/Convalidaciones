package com.uneatlantico.universidaders.repository;

import com.uneatlantico.universidaders.model.Contenido;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ContenidoRepository extends JpaRepository<Contenido, Integer> {
List<Contenido> findByidAsignatura(Integer idAsignatura);
}
