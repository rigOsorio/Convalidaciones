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

import com.uneatlantico.universidaders.resource.GradosResource;

@RunWith(SpringJUnit4ClassRunner.class)
public class GradosControllerTest {

	private MockMvc mockMvc;
	
	@Mock
	 GradosResource gradosResource;
	
	@InjectMocks
	GradosController controller;
	
	@Before
	public void setUP() throws Exception{
		mockMvc= MockMvcBuilders.standaloneSetup(controller)
				.build();
	}
	 
	 
	@Test
	public void testIndex() throws Exception {
		  mockMvc.perform(post("/views/grados")
	        		.param("idUniversidad", "1"))
	                .andExpect(status().isOk());
	}

	

}
