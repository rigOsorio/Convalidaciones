package com.uneatlantico.universidaders.controllers;

import static org.junit.Assert.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import com.uneatlantico.universidaders.resource.AsignaturasResource;

@RunWith(SpringJUnit4ClassRunner.class)
public class AsignaturasControllerTest {
	
	private MockMvc mockMvc;
	
	@Mock
	 AsignaturasResource asignaturasResource;
	
	@InjectMocks
	AsignaturasController controller;
	
	@Before
	public void setUP() throws Exception{
		mockMvc= MockMvcBuilders.standaloneSetup(controller)
				.build();
	}

	@Test
	public void testIndex() throws Exception {
		  mockMvc.perform(post("/views/asignaturas")
	        		.param("IdGrado", "1"))
	                .andExpect(status().isOk());
	}

	

}
