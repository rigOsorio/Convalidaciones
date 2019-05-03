package com.uneatlantico.universidaders.controllers;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller//Controller indica que esta clase estable la conexión con la vista
@RequestMapping(value = "otro")//le damos la ruta para acceder a la clase
public class ValidadasController {
    @Autowired//autowired le indica a spring que la variable hará uso de los metodos que ofrece la clase o interfaz, esto sin ser inicializada
    AsignaturasResource asignaturasResource;

    @Autowired//autowired le indica a spring que la variable hará uso de los metodos que ofrece la clase o interfaz, esto sin ser inicializada
    ContenidoResource contenidoResource;

    @PostMapping(value = "validadas")
    public String valicacion(@RequestParam String data, Model model){

        //List<Asignaturas> asignaturas = asignaturasResource.getAprobadas(separarId(idAsignatura));
        List<Asignaturas> uneatlantico = asignaturasResource.getUneatlantico();
        List<String> contenidos = contenidoResource.getAll();
        List<Asignaturas> noAprov = asignaturasResource.getNoAprobadas(separarId(data));
       // model.addAttribute("ids",asignaturas);
        model.addAttribute("uneatlantico",uneatlantico);
        model.addAttribute("aasignaturaResource",asignaturasResource);
        model.addAttribute("asignaturasNoAprobadas",noAprov);
        model.addAttribute("contenidos",contenidos);
        model.addAttribute("keys",separarId(data));

        model.addAttribute("title","Validacion");

        return"views/validadas";
    }
    @GetMapping(value = "validas")
    public String undefined(Model model){

        return "views/validadas";
    }
    public Map<String,Integer> separarId(String lista){
        String[] list;
        Map<String,Integer> listaId=new HashMap<>();
        list=(lista.split(","));
        for(int i=0;i<list.length;i++){
            listaId.put("jaja"+i,Integer.parseInt(list[i]));
        }
        return listaId;
    }


}
