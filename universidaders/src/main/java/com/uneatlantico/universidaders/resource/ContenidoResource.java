package com.uneatlantico.universidaders.resource;

import com.uneatlantico.universidaders.model.Contenido;
import com.uneatlantico.universidaders.repository.ContenidoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/rest/contenido")
public class ContenidoResource {
    @Autowired
    ContenidoRepository contenidoRepository;

    @GetMapping("/all")
    public List<String> getAll(){
        List<String> contenidoR = new ArrayList<>();
        for (Contenido contenido: contenidoRepository.findAll()
             ) {
            contenidoR.add(contenido.getContenidos());
        }
        return contenidoR;
    }

    @GetMapping("/asi/{idAsignaturas}")
    public List<String> getContenido(@PathVariable("idAsignaturas") final Integer idAsignaturas)
    {
        List<String> listaContenido=new ArrayList<String>();
        for(int i=0;i<contenidoRepository.findByidAsignatura(idAsignaturas).size();i++) {
            listaContenido.add(contenidoRepository.findByidAsignatura(idAsignaturas).get(i).getContenidos());
        }
        return listaContenido;
    }

}
