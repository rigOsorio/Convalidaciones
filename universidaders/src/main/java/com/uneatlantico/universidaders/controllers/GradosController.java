package com.uneatlantico.universidaders.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.uneatlantico.universidaders.model.Grados;
import com.uneatlantico.universidaders.resource.GradosResource;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("views")
public class GradosController {
	@Autowired
	GradosResource gredosResource;
	
	@PostMapping(value = "/grados")

    public String index(@RequestParam("idUniversidad") int idUniversidad,Model model){
        List<Grados> grados	 = gredosResource.getGrados(idUniversidad);

        model.addAttribute("grados",grados);
       return "views/grados";
    }
}
