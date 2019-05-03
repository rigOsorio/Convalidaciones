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
@RequestMapping("/rest/grados")//RequestMapping nos permite crear una ruta para acceder a nuestra clase
public class GradosResource {
	@Autowired//autowired le indica a spring que la variable hará uso de los metodos que ofrece la clase o interfaz, esto sin ser inicializada
	GradosRepository gradosRepository;

	@PostMapping("/ByidUniversidad")//PostMapping indica que sera un método post, por lo tanto el método recibira datos, también creamos la ruta para acceder al método
	public List<Grados> getGrados(@RequestBody Map<String,Integer> json){//RequestBody permite recibir más de un solo parámetro, en este caso le dicimos que lo que reciba lo guarde en un map, pues el parámetro que reciba será un json
		Iterator iterator = json.keySet().iterator();
		List<Grados> grados = new ArrayList<>();
		if(iterator.hasNext()) {
			String i = iterator.next().toString();
			grados= gradosRepository.findByidUniversidad(json.get(i));
		}
		return grados;
	}

	@GetMapping("/all")//GetMapping indica que sera es un metodo get, y también crea la ruta para acceder al método
	public List<Grados> getAll(){
		return gradosRepository.findAll();
	}
}
