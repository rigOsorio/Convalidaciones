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
@RequestMapping("/rest/contenido")//RequestMapping nos permite crear una ruta para acceder a nuestra clase
public class ContenidoResource {
    @Autowired//autowired le indica a spring que la variable hará uso de los metodos que ofrece la clase o interfaz, esto sin ser inicializada
    ContenidoRepository contenidoRepository;

    @GetMapping("/all")//GetMapping indica que sera es un metodo get, y también crea la ruta para acceder al método
    public List<String> getAll(){
        List<String> contenidoR = new ArrayList<>();
        for (Contenido contenido: contenidoRepository.findAll()
             ) {
            contenidoR.add(contenido.getContenidos());
        }
        return contenidoR;
    }

    @PostMapping("/idAsignatura")//PostMapping indica que sera un método post, por lo tanto el método recibira datos, también creamos la ruta para acceder al método
    public List<String> getContenido(@RequestBody Map<String,Integer> json)//RequestBody permite recibir más de un solo parámetro, en este caso le dicimos que lo que reciba lo guarde en un map, pues el parámetro que reciba será un json
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
