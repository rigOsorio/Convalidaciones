package com.uneatlantico.universidaders.controllers;

import com.uneatlantico.universidaders.model.Asignaturas;
import com.uneatlantico.universidaders.resource.AsignaturasResource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping(value = "views")
public class AsignaturasController {
    @Autowired
    AsignaturasResource asignaturasResource;

    @PostMapping(value = "asignaturas")
    public String index(@RequestParam("IdGrado") int IdGrado, Model model){
        List<Asignaturas> asignaturas = asignaturasResource.findByIdGrado(IdGrado);
        model.addAttribute("asiganturas",asignaturas);
        model.addAttribute("title","Asignaturas");
        return "views/asignaturas";
    }/*
    @RequestMapping(value = "validacion", method = RequestMethod.POST)
    public ResponseEntity<Asignaturas> valicacion(@RequestBody List<Integer> idAsignatura){

    }*/
    @GetMapping(value = "asignaturas")
    public String undefined(Model model){
        model.addAttribute("title","Undefined");
        return "views/undefined";
    }
}