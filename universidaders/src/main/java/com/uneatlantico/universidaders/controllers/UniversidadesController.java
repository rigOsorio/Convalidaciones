package com.uneatlantico.universidaders.controllers;


import com.uneatlantico.universidaders.model.Universidades;
import com.uneatlantico.universidaders.resource.UniversidadesResource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Controller
@RequestMapping("views")

public class UniversidadesController {
    @Autowired
    private UniversidadesResource universidadesResource ;

    @RequestMapping(value = "")
    public String index(Model model){
        List<Universidades> universidades = universidadesResource.getAll();
       model.addAttribute("universidades",universidades);
        model.addAttribute("title","Universidades");
        return "views/index";
    }
}
