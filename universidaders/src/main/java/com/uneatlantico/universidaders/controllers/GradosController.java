package com.uneatlantico.universidaders.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.uneatlantico.universidaders.model.Grados;
import com.uneatlantico.universidaders.resource.GradosResource;

@Controller
@RequestMapping("views")
public class GradosController {
    @Autowired
    GradosResource gradosResource;

    @PostMapping(value = "grados")
    public String index(@RequestParam("idUniversidad") int idUniversidad,Model model){
        Map<String,Integer> mapa = new HashMap<>();
        mapa.put("hola",idUniversidad);
        List<Grados> grados	 = gradosResource.getGrados(mapa);

        model.addAttribute("grados",grados);
        model.addAttribute("title","Grados");
        return "views/grados";
    }
    @GetMapping(value = "grados")
    public String undefined(Model model){
        model.addAttribute("title","Undefined");

        return "views/undefined";
    }
}