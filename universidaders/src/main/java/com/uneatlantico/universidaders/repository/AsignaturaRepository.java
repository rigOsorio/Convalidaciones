package com.uneatlantico.universidaders.repository;

import com.uneatlantico.universidaders.model.Asignaturas;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

public interface AsignaturaRepository extends JpaRepository<Asignaturas,Integer> {
    public List<Asignaturas> findAllByIdGrado(@PathVariable("IdGrado") final int IdGrado);
}
