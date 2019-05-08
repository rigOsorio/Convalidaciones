package com.uneatlantico.universidaders.controllers;


import com.uneatlantico.universidaders.model.Universidades;
import com.uneatlantico.universidaders.resource.UniversidadesResource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Controller//Controller indica que esta clase estable la conexión con la vista
@RequestMapping("/views")//le damos la ruta para acceder a la clase

public class UniversidadesController {
    @Autowired//autowired le indica a spring que la variable hará uso de los metodos que ofrece la clase o interfaz, esto sin ser inicializada
    private UniversidadesResource universidadesResource ;

    @RequestMapping(value = "")
    public String index(Model model){
        List<Universidades> universidades = universidadesResource.getAll();
       model.addAttribute("universidades",universidades);
        model.addAttribute("title","Universidades");
        return "views/index";
    }
}
