package com.uneatlantico.universidaders.resource;

import com.uneatlantico.universidaders.model.Outcom;
import com.uneatlantico.universidaders.repository.OutcomRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/rest/outcom")//RequestMapping nos permite crear una ruta para acceder a nuestra clase
public class OutcomResource {
    @Autowired//autowired le indica a spring que la variable hará uso de los metodos que ofrece la clase o interfaz, esto sin ser inicializada
    OutcomRepository outcomRepository;
/*
    @GetMapping("/all")//GetMapping indica que sera es un metodo get, y también crea la ruta para acceder al método
    public List<Outcom> getAll(){
        return outcomRepository.findAll();
    }
*/
    //@PostMapping("/Byid")//PostMapping indica que sera un método post, por lo tanto el método recibira datos, también creamos la ruta para acceder al método
    public Outcom getOutcom(@RequestBody Map<String,Integer> json){//RequestBody permite recibir más de un solo parámetro, en este caso le dicimos que lo que reciba lo guarde en un map, pues el parámetro que reciba será un json
        Iterator iterator = json.keySet().iterator();
        Outcom outcom = new Outcom();
        if(iterator.hasNext())
        {
            String i = iterator.next().toString();
            outcom=outcomRepository.findByid(json.get(i));
        }
        return outcom;
    }

}
