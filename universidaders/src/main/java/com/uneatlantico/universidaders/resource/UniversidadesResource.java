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

    @GetMapping("/all")//GetMapping indica que sera es un metodo get, y también crea la ruta para acceder al método
    public List<Universidades> getAll(){
        List<Universidades> lista=universidadesRepository.findAll();
        lista.remove(universidadesRepository.findAll().get(3));
        return lista;
    }

}
