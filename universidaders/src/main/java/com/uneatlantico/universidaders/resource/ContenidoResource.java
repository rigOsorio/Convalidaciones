package com.uneatlantico.universidaders.resource;

import com.uneatlantico.universidaders.model.Contenido;
import com.uneatlantico.universidaders.repository.ContenidoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

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

    @PostMapping("/idAsignatura")
    public List<String> getContenido(@RequestBody Map<String,Integer> json)
    {
        Iterator iterator = json.keySet().iterator();
        List<String> listaContenido=new ArrayList<String>();
        if(iterator.hasNext()){
            String next = iterator.next().toString();
        for(int i=0;i<contenidoRepository.findByidAsignatura(json.get(next)).size();i++) {
            listaContenido.add(contenidoRepository.findByidAsignatura(json.get(next)).get(i).getContenidos());
        }}
        return listaContenido;
    }

}
