package com.uneatlantico.universidaders.resource;

import com.uneatlantico.universidaders.model.Asignaturas;
import com.uneatlantico.universidaders.repository.AsignaturaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.persistence.Id;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

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

    @PostMapping("/Grado/")
    public List<Asignaturas> findByIdGrado(@RequestBody Map<String,Integer> cosa){
        Iterator iterator = cosa.keySet().iterator();
        List<Asignaturas> asignaturas= new ArrayList<>();
        if(iterator.hasNext()){
            String i=iterator.next().toString();
            asignaturas = asignaturaRepository.findAllByIdGrado(cosa.get(i));
        }
    return  asignaturas;
    }
    @PostMapping("/aprovadas")
    public List<Asignaturas>  getAprobadas(@RequestBody Map<String,Integer> cosa) {

         List<Asignaturas> listaAporabadas=new ArrayList<Asignaturas>();
        Iterator jaja = cosa.keySet().iterator();
        while(jaja.hasNext()) {
            String i = jaja.next().toString();
            System.out.println(asignaturaRepository.findByid(cosa.get(i)).getValidacion());
            if(asignaturaRepository.findByid(cosa.get(i)).getValidacion()==1) {
                listaAporabadas.add(asignaturaRepository.findByid(cosa.get(i)));
            }
        }
        return listaAporabadas;
    }
    public List<Asignaturas> getUneatlantico() {

        return asignaturaRepository.findAllByIdGrado(4);
    }

    public List<Asignaturas> getNoAprobadas(@RequestBody Map<String,Integer> json) {
        List<Asignaturas> listaNoAporabadas=new ArrayList<Asignaturas>();
        Iterator iterator = json.keySet().iterator();
        while(iterator.hasNext()) {
            String i = iterator.next().toString();
            if(asignaturaRepository.findByid(json.get(i)).getValidacion()==0) {
                listaNoAporabadas.add(asignaturaRepository.findByid(json.get(i)));
            }
        }
        return listaNoAporabadas;
    }
    @PostMapping("/Byid")
    public Asignaturas getAsignatura(@RequestBody Map<String,Integer> json){
        Iterator iterator = json.keySet().iterator();
        Asignaturas asignatura = new Asignaturas();
        if(iterator.hasNext())
        {
            String i = iterator.next().toString();
            asignatura=asignaturaRepository.findByid(json.get(i));
        }
        return asignatura;
    }

    public Integer getCreditos(Integer id){
        return asignaturaRepository.findByid(id).getCreditoss();
    }

    @PostMapping("/ContenidoByid")
    public List<String> getContenido(@RequestBody Map<String,Integer> json){
           List<String> contenido= contenidoResource.getContenido(json);
        return contenido;
        
    }

    @PostMapping("/OutcomByid")
    public String getOutcom(@RequestBody Map<String,Integer> json){
        return outcomResource.getOutcom(json).getDescripcionOutcom();
    }

}
