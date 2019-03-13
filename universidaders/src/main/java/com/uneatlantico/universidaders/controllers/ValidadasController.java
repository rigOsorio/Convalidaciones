package com.uneatlantico.universidaders.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller
@RequestMapping(value = "views")
public class ValidadasController {
    @RequestMapping(value = "validadas",method = RequestMethod.POST)
    @ResponseBody
    public String valicacion(@RequestBody String idAsignatura, Model model){
        model.addAttribute("ids",idAsignatura);
        System.out.print(idAsignatura);
        model.addAttribute("title","Validacion");
        System.out.print(idAsignatura+"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
        return "redirect:/validadas";
    }
}
