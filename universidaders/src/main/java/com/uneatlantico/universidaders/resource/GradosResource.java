package com.uneatlantico.universidaders.resource;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

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



	@PostMapping("/ByidUniversidad")
	public List<Grados> getGrados(@RequestBody Map<String,Integer> json){
		Iterator iterator = json.keySet().iterator();
		List<Grados> grados = new ArrayList<>();
		if(iterator.hasNext()) {
			String i = iterator.next().toString();
			grados= gradosRepository.findByidUniversidad(json.get(i));
		}
		return grados;
	}

	@GetMapping("/all")
	public List<Grados> getAll(){
		return gradosRepository.findAll();
	}
}
