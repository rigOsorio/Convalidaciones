package com.uneatlantico.universidaders;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/asignatura")
public class ControllerAsignatura {
	
	@Autowired
	RepositoryAsignaturas repositorioAsignatura;
	
	@GetMapping(value="/allAsignatura")
	public List<asignaturas> findAll(){
		return repositorioAsignatura.findAll();
	}
	
	@GetMapping(value="/by")
	public Optional<asignaturas> find(){
		Integer i=5;
		return repositorioAsignatura.findById(i);
	}
}
