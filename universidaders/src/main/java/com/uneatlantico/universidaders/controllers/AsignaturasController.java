package com.uneatlantico.universidaders.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "views")
public class AsignaturasController {
    //@Autowired
    //AsignaturasResource asignaturasResource;

    @PostMapping(value = "asignaturas")
    public String index(@RequestParam("idGrado") int idGrado, Model model){
        //List<Asignaturas> asignaturas = asignaturaResource(idGrado);
        //model.addAttribute(asignaturas);
        model.addAttribute("title","Asignaturas");
        return "views/asignaturas";
    }
    @GetMapping(value = "asignaturas")
    public String undefined(Model model){
        model.addAttribute("title","Undefined");

        return "views/undefined";
    }
}
