package com.uneatlantico.universidaders.resource;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.uneatlantico.universidaders.model.Grados;
import com.uneatlantico.universidaders.repository.GradosRepository;

@RestController
@RequestMapping("/rest/grados")
public class GradosResource {
	@Autowired
	GradosRepository gradosRepository;


	
	@GetMapping("/carreras/{id}")
	public List<Grados> getGrados(@PathVariable(name = "id") final int idUniversidad){
		return gradosRepository.findByidUniversidad(idUniversidad);
	}
	
	@GetMapping("/all")
	public List<Grados> getAll(){
		return gradosRepository.findAll();
	}
}
