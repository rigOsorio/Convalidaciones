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


	
<<<<<<< HEAD
	@GetMapping("/carrers/{idUniversidad}")
	public List<Grados> getGrados(@PathVariable("idUniversidad") final Integer idUniversidad){

		List<Grados> grados=gradosRepository.findByidUniversidad(idUniversidad);
        return grados;
=======
	@GetMapping("/carreras/{id}")
	public List<Grados> getGrados(@PathVariable(name = "id") final int idUniversidad){
		return gradosRepository.findByidUniversidad(idUniversidad);
>>>>>>> 96941b387a4051530fd3762a3b57b3c4d9358867
	}
	
	@GetMapping("/all")
	public List<Grados> getAll(){
		return gradosRepository.findAll();
	}
}
