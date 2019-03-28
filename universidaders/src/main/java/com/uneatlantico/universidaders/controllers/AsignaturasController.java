package com.uneatlantico.universidaders.controllers;

import com.uneatlantico.universidaders.model.Asignaturas;
import com.uneatlantico.universidaders.resource.AsignaturasResource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "views")
public class AsignaturasController {
    @Autowired
    AsignaturasResource asignaturasResource;

    @PostMapping(value = "asignaturas")
    public String index(@RequestParam("IdGrado") int IdGrado, Model model){
        Map <String,Integer> algo = new HashMap<String,Integer>();
        algo.put("hola",IdGrado);
        List<Asignaturas> asignaturas = asignaturasResource.findByIdGrado(algo);
        model.addAttribute("asiganturas",asignaturas);
        model.addAttribute("title","Asignaturas");
        return "views/asignaturas";
    }

    @GetMapping(value = "asignaturas")
    public String undefined(Model model){
        model.addAttribute("title","Undefined");

        return "views/undefined";
    }

}
