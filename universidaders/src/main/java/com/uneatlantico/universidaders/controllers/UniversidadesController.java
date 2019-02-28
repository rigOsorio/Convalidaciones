package com.uneatlantico.Universidaders.controllers;

import com.uneatlantico.Universidaders.model.Universidades;
import com.uneatlantico.Universidaders.repository.UniversidadesRepository;
import com.uneatlantico.Universidaders.resource.UniversidadesResource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;

import javax.annotation.Resource;
import java.util.ArrayList;
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
        model.addAttribute("title","Pruebas");
        return "views/index";
    }
}
