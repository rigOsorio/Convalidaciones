package com.uneatlantico.universidaders;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/universidades")
public class ControllerUniversidades {
	@Autowired
	RepositoryUniversidades repositorioUniversidades;
	
	@GetMapping(value="/all")
	public List<Universidades> findAll(){
		return repositorioUniversidades.findAll();
	}
	
}
