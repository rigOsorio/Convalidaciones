package com.uneatlantico.universidaders.resource;

import com.uneatlantico.universidaders.model.Contenido;
import com.uneatlantico.universidaders.repository.ContenidoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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

}
