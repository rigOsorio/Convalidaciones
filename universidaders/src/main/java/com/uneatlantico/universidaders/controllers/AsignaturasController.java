package com.uneatlantico.universidaders.controllers;

import com.uneatlantico.universidaders.model.Asignaturas;
import com.uneatlantico.universidaders.resource.AsignaturasResource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/views")
public class AsignaturasController {
    @Autowired
    AsignaturasResource asignaturasResource;


    @RequestMapping(value = "")
    public String index(Model model){
        List<Asignaturas> universidades = asignaturasResource.getAll();
        model.addAttribute("universidades",universidades);
        model.addAttribute("title","Pruebas");
        return "views/nombreIndex";

    }
}
