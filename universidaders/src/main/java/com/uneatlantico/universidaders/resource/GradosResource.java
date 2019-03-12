package com.uneatlantico.universidaders.resource;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.uneatlantico.universidaders.model.Grados;
import com.uneatlantico.universidaders.repository.GradosRepository;

@RestController
@RequestMapping("/rest/grados")
public class GradosResource {
	@Autowired
	GradosRepository gradosRepository;
	
	@GetMapping("/carreras")
	public List<Grados> getGrados(int idUniversidad){
		return gradosRepository.findByidUniversidad(idUniversidad);
	}
	
	@GetMapping("/all")
	public List<Grados> getAll(){
		return gradosRepository.findAll();
	}
}
