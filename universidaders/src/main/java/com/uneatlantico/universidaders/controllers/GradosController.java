package com.uneatlantico.universidaders.controllers;

import java.util.List;

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
        List<Grados> grados	 = gradosResource.getGrados(idUniversidad);
        model.addAttribute("grados",grados);
        model.addAttribute("title","Asignaturas");
       return "views/grados";
    }
    @GetMapping(value = "grados")
    public String undefined(Model model){
        model.addAttribute("title","Undefined");

        return "views/undefined";
    }
}
