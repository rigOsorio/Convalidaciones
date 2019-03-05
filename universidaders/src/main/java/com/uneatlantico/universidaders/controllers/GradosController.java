package com.uneatlantico.universidaders.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.uneatlantico.universidaders.model.Grados;
import com.uneatlantico.universidaders.resource.GradosResource;

@Controller
@RequestMapping("/hello")
public class GradosController {
	@Autowired
	GradosResource gredosResource;
	
	@RequestMapping(value = "/hola")
    public String index(Model model){
        List<Grados> grados	 = gredosResource.getAll();
       return null;
    }
}
