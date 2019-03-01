package com.uneatlantico.Universidaders.resource;

import com.uneatlantico.Universidaders.model.Universidades;
import com.uneatlantico.Universidaders.repository.UniversidadesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/rest/universidades")
public class UniversidadesResource {

    @Autowired
    UniversidadesRepository universidadesRepository;

    @GetMapping("/all")
    public List<Universidades> getAll(){
        return universidadesRepository.findAll();
    }

    @PostMapping(value = "/nombreUniversidad")
    public List<Universidades> getUniversidades(@RequestParam(name = "nombreUniversidad") final String nombreUniversidad){
        return universidadesRepository.findBynombreUniversidad(nombreUniversidad);
    }

    @GetMapping("/id/{id}")
    public Universidades getId(@PathVariable("id") final Integer id){
        return universidadesRepository.findById(id).get();
    }

    @GetMapping("/update/{id}/{nombreUniversidad}")
    public Universidades update(@PathVariable("id") final Integer id,@PathVariable("nombreUniversidad") final String nombreUniversidad){
        Universidades universidades = getId(id);
        universidades.setNombreUniversidad(nombreUniversidad);

        return universidadesRepository.save(universidades);
    }
}
