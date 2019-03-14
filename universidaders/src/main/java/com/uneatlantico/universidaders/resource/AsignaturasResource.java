package com.uneatlantico.universidaders.resource;

import com.uneatlantico.universidaders.model.Asignaturas;
import com.uneatlantico.universidaders.repository.AsignaturaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.persistence.Id;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/rest/asignaturas")
public class AsignaturasResource {
    @Autowired
    AsignaturaRepository asignaturaRepository;

    @GetMapping("/all")
    public List<Asignaturas> getAll(){
        return asignaturaRepository.findAll();
    }

    @GetMapping("/asignaturas/{IdGrado}")
    public List<Asignaturas> findByIdGrado(@PathVariable("IdGrado") final int IdGrado){
    List<Asignaturas> asignaturas = asignaturaRepository.findAllByIdGrado(IdGrado);
    return  asignaturas;
    }
    @PostMapping("/aprovadas")
    public List<Asignaturas> getAprobadas(@RequestParam("List<Integer>") List<Integer> lista) {
        List<Asignaturas> listaAporabadas=new ArrayList<Asignaturas>();
        List<Asignaturas> listaEquivalencia=new ArrayList<Asignaturas>();//almacena una lista con las asignaturas que equivalen
        for(int i=0;i<lista.size();i++) {
            if(asignaturaRepository.findByid(lista.get(i)).getValidacion()==0) {
                listaAporabadas.add(asignaturaRepository.findByid(lista.get(i)));
                listaEquivalencia.add(asignaturaRepository.findByid(listaAporabadas.get(i).getIdAsigantura()));
            }
        }
        return listaAporabadas;
    }
}
