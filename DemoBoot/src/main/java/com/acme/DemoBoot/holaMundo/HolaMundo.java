package com.acme.DemoBoot.holaMundo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.stereotype.Controller;

@Controller
public class HolaMundo {
	
	@ResponseBody
	@GetMapping("/Hola")
	public String Hola() {
		return ("hello from Spring");
	}
	
	@GetMapping("/welcome")
	public String Welcome() {
		return "welcomepage";
	}
}
