package com.uneatlantico.universidaders;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

@Component
public interface RepositoryAsignaturas extends JpaRepository<asignaturas, Integer>{

}
