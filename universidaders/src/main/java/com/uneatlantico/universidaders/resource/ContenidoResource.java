package com.uneatlantico.universidaders.resource;

import com.uneatlantico.universidaders.model.Contenido;
import com.uneatlantico.universidaders.repository.ContenidoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/rest/contenido")
public class ContenidoResource {
    @Autowired
    ContenidoRepository contenidoRepository;

    @GetMapping("/all")
    public List<Contenido> getAll(){
        return contenidoRepository.findAll();
    }

    @GetMapping("/asi/{idAsignaturas}")
    public List<Contenido> getContenido(@PathVariable("idAsignaturas") final Integer idAsignaturas)
    {
        return contenidoRepository.findByidAsignatura(idAsignaturas);
    }

}
