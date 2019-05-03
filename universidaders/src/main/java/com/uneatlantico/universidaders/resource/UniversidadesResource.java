package com.uneatlantico.universidaders.resource;

import com.uneatlantico.universidaders.controllers.GradosController;
import com.uneatlantico.universidaders.model.Grados;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.uneatlantico.universidaders.model.Universidades;
import com.uneatlantico.universidaders.repository.GradosRepository;
import com.uneatlantico.universidaders.repository.UniversidadesRepository;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/rest/universidades")
public class UniversidadesResource {

    @Autowired
    UniversidadesRepository universidadesRepository;
    
    @Autowired
    GradosRepository gradoRepository;

     
    @GetMapping("/all")
    public List<Universidades> getAll(){
        List<Universidades> lista=universidadesRepository.findAll();
        return lista;
    }
    
    
    @GetMapping("/all2")
    public List<Universidades> getAll2(){
        ArrayList<Universidades> lista=(ArrayList<Universidades>) universidadesRepository.findAll();
        lista.remove(universidadesRepository.findAll().get(3));
        return lista;
    }
    
    @PostMapping(value = "/nombreUniversida")
    public List<Grados> getUniversidades(@RequestParam(name = "nombreUniversidad") final String nombreUniversidad){
    	Integer idUniversidad= universidadesRepository.findBynombreUniversidad(nombreUniversidad).getId();
        return gradoRepository.findByidUniversidad(idUniversidad);
    }
    
    @PostMapping(value = "/nombreUniversidad")
    public Integer getidUniversidad(@RequestParam(name = "nombreUniversidad") final String nombreUniversidad){
        Integer idUniversidad= universidadesRepository.findBynombreUniversidad(nombreUniversidad).getId();
        return idUniversidad;
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
