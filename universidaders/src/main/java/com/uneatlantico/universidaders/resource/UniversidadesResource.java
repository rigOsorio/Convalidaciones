package com.uneatlantico.universidaders.resource;

import com.uneatlantico.universidaders.controllers.GradosController;
import com.uneatlantico.universidaders.model.Grados;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.uneatlantico.universidaders.model.Universidades;
import com.uneatlantico.universidaders.repository.GradosRepository;
import com.uneatlantico.universidaders.repository.UniversidadesRepository;

import java.util.List;

@RestController
@RequestMapping("/rest/universidades")//RequestMapping nos permite crear una ruta para acceder a nuestra clase
public class UniversidadesResource {

    @Autowired//autowired le indica a spring que la variable hará uso de los metodos que ofrece la clase o interfaz, esto sin ser inicializada
    UniversidadesRepository universidadesRepository;
    
    @Autowired//autowired le indica a spring que la variable hará uso de los metodos que ofrece la clase o interfaz, esto sin ser inicializada
    GradosRepository gradoRepository;

    @GetMapping("/all")//GetMapping indica que sera es un metodo get, y también crea la ruta para acceder al método
    public List<Universidades> getAll(){
        List<Universidades> lista=universidadesRepository.findAll();
        lista.remove(universidadesRepository.findAll().get(3));
        return lista;
    }
    
    @PostMapping(value = "/nombreUniversida")//PostMapping indica que sera un método post, por lo tanto el método recibira datos, también creamos la ruta para acceder al método
    public List<Grados> getUniversidades(@RequestParam(name = "nombreUniversidad") final String nombreUniversidad){
    	Integer idUniversidad= universidadesRepository.findBynombreUniversidad(nombreUniversidad).getId();
        return gradoRepository.findByidUniversidad(idUniversidad);
    }
    
    @PostMapping(value = "/nombreUniversidad")//PostMapping indica que sera un método post, por lo tanto el método recibira datos, también creamos la ruta para acceder al método
    public Integer getidUniversidad(@RequestParam(name = "nombreUniversidad") final String nombreUniversidad){//RequestParam indica que recibiremos un solo parametro, y le dicimos que lo almacen en una variable de tipo String
        Integer idUniversidad= universidadesRepository.findBynombreUniversidad(nombreUniversidad).getId();
        return idUniversidad;
    }

    @GetMapping("/id/{id}")//GetMapping indica que sera es un metodo get, y también crea la ruta para acceder al método
    public Universidades getId(@PathVariable("id") final Integer id){
        return universidadesRepository.findById(id).get();
    }

    @GetMapping("/update/{id}/{nombreUniversidad}")//GetMapping indica que sera es un metodo get, y también crea la ruta para acceder al método
    public Universidades update(@PathVariable("id") final Integer id,@PathVariable("nombreUniversidad") final String nombreUniversidad){
        Universidades universidades = getId(id);
        universidades.setNombreUniversidad(nombreUniversidad);
        return universidadesRepository.save(universidades);
    }
}
