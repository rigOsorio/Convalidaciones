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

    @Autowired
    ContenidoResource contenidoResource;

    @Autowired
    OutcomResource  outcomResource;

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
        for(int i=0;i<lista.size();i++) {
            if(asignaturaRepository.findByid(lista.get(i)).getValidacion()==1) {
                listaAporabadas.add(asignaturaRepository.findByid(lista.get(i)));
            }
        }
        return listaAporabadas;
    }
    public List<Asignaturas> getUneatlantico() {

        return asignaturaRepository.findAllByIdGrado(4);
    }

    public List<Asignaturas> getNoAprobadas(@RequestParam("List<Integer>") List<Integer> lista) {
        List<Asignaturas> listaNoAporabadas=new ArrayList<Asignaturas>();
        for(int i=0;i<lista.size();i++) {
            if(asignaturaRepository.findByid(lista.get(i)).getValidacion()==0) {
                listaNoAporabadas.add(asignaturaRepository.findByid(lista.get(i)));
            }
        }
        return listaNoAporabadas;
    }

    public Asignaturas getAsignatura(Integer id){
        return asignaturaRepository.findByid(id);
    }

    public Integer getCreditos(Integer id){
        return asignaturaRepository.findByid(id).getCreditoss();
    }

    public List<String> getContenido(Integer id){
        return contenidoResource.getContenido(id);
    }

    public String getOutcom(Integer idOutcom){
        return outcomResource.getContenidoOutcom(idOutcom);
    }

}
