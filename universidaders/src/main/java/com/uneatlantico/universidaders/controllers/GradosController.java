package com.uneatlantico.universidaders.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.uneatlantico.universidaders.model.Grados;
import com.uneatlantico.universidaders.resource.GradosResource;

@Controller
@RequestMapping("/views")
public class GradosController {
	@Autowired
	GradosResource gradosResource;
	
	@RequestMapping(value = "/grados")
        public String index2(Model model){
        List<Grados> grados	 = gradosResource.getGrados(3);
        model.addAttribute("grados",grados);
        model.addAttribute("title","Pruebas");
       return "views/grados";
    }
}
