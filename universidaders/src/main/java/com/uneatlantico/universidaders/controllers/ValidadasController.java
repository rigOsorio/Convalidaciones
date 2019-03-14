package com.uneatlantico.universidaders.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller
@RequestMapping(value = "views")
public class ValidadasController {
    @PostMapping(value = "validadas")
    public String valicacion(@RequestParam String idAsignatura, Model model){
        model.addAttribute("ids",idAsignatura);

        model.addAttribute("title","Validacion");

        return"views/validadas";
    }
    @GetMapping(value = "validadas")
    public String undefined(Model model){

        return "views/validadas";
    }
}
