package com.uneatlantico.universidaders.controllers;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.Assert.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.util.ArrayList;
import java.util.HashMap;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import com.uneatlantico.universidaders.resource.AsignaturasResource;
import com.uneatlantico.universidaders.resource.ContenidoResource;

@RunWith(SpringJUnit4ClassRunner.class)
public class ValidadasControllerTest {
	
	private MockMvc mockMvc;
	
	@Mock
	 AsignaturasResource asignaturasResource;
	
	@Mock
	ContenidoResource contenidoResource;
	
	@InjectMocks
	ValidadasController controller;

	@Before
	public void setUP() throws Exception{
		mockMvc= MockMvcBuilders.standaloneSetup(controller)
				.build();
	}
	
	@Test
	public void testValicacion() throws Exception {
		  mockMvc.perform(post("/views/validadas")
	        		.param("data", "1"))
	                .andExpect(status().isOk());
	}
	
	@Test
	public void testSepararId() {
		String h = "1,2,3,4,5,6,7,8,9,0";
	
		HashMap<String,Integer> mapa =(HashMap<String, Integer>) controller.separarId(h);
		assertThat(10).isEqualTo(mapa.size());
		
		
	}

/*	@Test
	public void testUndefined() {
		fail("Not yet implemented");
	}

	*/

}
