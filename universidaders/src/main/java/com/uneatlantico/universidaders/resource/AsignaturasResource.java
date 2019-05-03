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
@RequestMapping("/rest/asignaturas")//RequestMapping nos permite crear una ruta para acceder a nuestra clase
public class AsignaturasResource {
    @Autowired//autowired le indica a spring que la variable hará uso de los metodos que ofrece la clase o interfaz, esto sin ser inicializada
    AsignaturaRepository asignaturaRepository;

    @Autowired//autowired le indica a spring que la variable hará uso de los metodos que ofrece la clase o interfaz, esto sin ser inicializada
    ContenidoResource contenidoResource;

    @Autowired//autowired le indica a spring que la variable hará uso de los metodos que ofrece la clase o interfaz, esto sin ser inicializada
    OutcomResource  outcomResource;

    @GetMapping("/all")//GetMapping indica que sera es un metodo get, y también crea la ruta para acceder al método
    public List<Asignaturas> getAll(){
        return asignaturaRepository.findAll();
    }

    @PostMapping("/Grado/")//PostMapping indica que sera un método post, por lo tanto el método recibira datos, también creamos la ruta para acceder al método
    public List<Asignaturas> findByIdGrado(@RequestBody Map<String,Integer> json){//RequestBody permite recibir más de un solo parámetro, en este caso le dicimos que lo que reciba lo guarde en un map, pues el parámetro que reciba será un json
        Iterator iterator = json.keySet().iterator();
        List<Asignaturas> asignaturas= new ArrayList<>();
        if(iterator.hasNext()){
            String i=iterator.next().toString();
            asignaturas = asignaturaRepository.findAllByIdGrado(json.get(i));
        }
    return  asignaturas;
    }
    @PostMapping("/aprovadas")//PostMapping indica que sera un método post, por lo tanto el método recibira datos, también creamos la ruta para acceder al método
    public List<Asignaturas>  getAprobadas(@RequestBody Map<String,Integer> cosa) {//RequestBody permite recibir más de un solo parámetro, en este caso le dicimos que lo que reciba lo guarde en un map, pues el parámetro que reciba será un json
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
    @PostMapping("/Byid")//PostMapping indica que sera un método post, por lo tanto el método recibira datos, también creamos la ruta para acceder al método
    public Asignaturas getAsignatura(@RequestBody Map<String,Integer> json){//RequestBody permite recibir más de un solo parámetro, en este caso le dicimos que lo que reciba lo guarde en un map, pues el parámetro que reciba será un json
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

    @PostMapping("/ContenidoByid")//PostMapping indica que sera un método post, por lo tanto el método recibira datos, también creamos la ruta para acceder al método
    public List<String> getContenido(@RequestBody Map<String,Integer> json){//RequestBody permite recibir más de un solo parámetro, en este caso le dicimos que lo que reciba lo guarde en un map, pues el parámetro que reciba será un json
           List<String> contenido= contenidoResource.getContenido(json);
        return contenido;
        
    }

    @PostMapping("/OutcomByid")//PostMapping indica que sera un método post, por lo tanto el método recibira datos, también creamos la ruta para acceder al método
    public String getOutcom(@RequestBody Map<String,Integer> json){//RequestBody permite recibir más de un solo parámetro, en este caso le dicimos que lo que reciba lo guarde en un map, pues el parámetro que reciba será un json
        return outcomResource.getOutcom(json).getDescripcionOutcom();
    }

}
