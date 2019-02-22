package com.uneatlantico.universidaders;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

@Component
public interface RepositoryUniversidades extends JpaRepository<Universidades, Integer>{
	//Universidades findByName(String name);
}
