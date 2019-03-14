package com.uneatlantico.universidaders.controllers;

import com.uneatlantico.universidaders.model.Asignaturas;
import com.uneatlantico.universidaders.model.Contenido;
import com.uneatlantico.universidaders.resource.AsignaturasResource;
import com.uneatlantico.universidaders.resource.ContenidoResource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "views")
public class ValidadasController {
    @Autowired
    AsignaturasResource asignaturasResource;

    @Autowired
    ContenidoResource contenidoResource;

    @PostMapping(value = "validadas")
    public String valicacion(@RequestParam String idAsignatura, Model model){
        List<Asignaturas> asignaturas = asignaturasResource.getAprobadas(separarId(idAsignatura));
        model.addAttribute("ids",asignaturas);

        model.addAttribute("title","Validacion");

        return"views/validadas";
    }
    @GetMapping(value = "validadas")
    public String undefined(Model model){

        return "views/validadas";
    }
    public List<Integer> separarId(String lista){
        String[] list;
        List<Integer> listaId=new ArrayList<Integer>();
        list=(lista.split(","));
        for(int i=0;i<list.length;i++){
            listaId.add(Integer.parseInt(list[i]));
        }
        return listaId;
    }


}
