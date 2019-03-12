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
<<<<<<< HEAD
@RequestMapping("views")
=======
@RequestMapping("/views")
>>>>>>> 96941b387a4051530fd3762a3b57b3c4d9358867
public class GradosController {
	@Autowired
	GradosResource gradosResource;
	
<<<<<<< HEAD
	@PostMapping(value = "/grados")

    public String index(@RequestParam("idUniversidad") int idUniversidad,Model model){
        List<Grados> grados	 = gredosResource.getGrados(idUniversidad);

        model.addAttribute("grados",grados);
=======
	@RequestMapping(value = "/grados")
        public String index2(Model model){
        List<Grados> grados	 = gradosResource.getGrados(3);
        model.addAttribute("grados",grados);
        model.addAttribute("title","Pruebas");
>>>>>>> 96941b387a4051530fd3762a3b57b3c4d9358867
       return "views/grados";
    }
}
