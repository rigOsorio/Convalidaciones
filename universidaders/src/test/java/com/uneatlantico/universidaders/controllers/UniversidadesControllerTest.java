package com.uneatlantico.universidaders.controllers;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import static org.hamcrest.Matchers.*;
import com.uneatlantico.universidaders.resource.UniversidadesResource;

@RunWith(SpringJUnit4ClassRunner.class)
public class UniversidadesControllerTest {
	
	private MockMvc mockMvc;
	
	@Mock 
	UniversidadesResource universidadesResource;
	
	@InjectMocks
	private UniversidadesController controller;
	
	@Before
	public void setUP() throws Exception{
		mockMvc= MockMvcBuilders.standaloneSetup(controller)
				.build();
	}

	@Test
	public void testIndex() throws Exception {
		 mockMvc.perform(get("/views"))
		 			.andExpect(status().isOk())
		 			.andExpect(view().name("views/index"))
		 			.andExpect(model().attribute("title", "Universidades"));
	}

}
