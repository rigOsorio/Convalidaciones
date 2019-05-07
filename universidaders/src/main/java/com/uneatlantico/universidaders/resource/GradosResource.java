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

	public List<Grados> getGrados(Integer id){
		List<Grados> grados;
		grados= gradosRepository.findByidUniversidad(id);
		return grados;
	}

}
