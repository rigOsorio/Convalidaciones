package com.uneatlantico.universidaders.resource;

import static org.assertj.core.api.Assertions.assertThat;
import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.*;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.util.ArrayList;

import org.hamcrest.Matchers;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import com.uneatlantico.universidaders.model.Universidades;
import com.uneatlantico.universidaders.repository.UniversidadesRepository;

@RunWith(SpringJUnit4ClassRunner.class)
public class UniversidadesResourceTest {

private MockMvc mockMvc;
	
	@Mock
	 UniversidadesRepository universidadesRepository;
	
	@InjectMocks
private UniversidadesResource controller;
	
	@Before
	public void setUP() throws Exception{
		mockMvc= MockMvcBuilders.standaloneSetup(controller)
				.build();
	}
	
	
	
	@Test
	public void testGetAll() throws Exception {
		Universidades first = new Universidades();
		first.setId(1);
		first.setNombreUniversidad("uno");
		Universidades second = new Universidades();
		second.setId(2);
		second.setNombreUniversidad("dos");
		Universidades tres = new Universidades();
		tres.setId(3);
		tres.setNombreUniversidad("tres");
		Universidades cuarto = new Universidades();
		cuarto.setId(4);
		cuarto.setNombreUniversidad("cuarto");
		ArrayList<Universidades> lista = new ArrayList<Universidades>();
		lista.add(first);lista.add(second);lista.add(tres);lista.add(cuarto);
		when(universidadesRepository.findAll()).thenReturn(lista);	
		
		 mockMvc.perform(get("/rest/universidades/all")
	                .accept(MediaType.APPLICATION_JSON))
		 			.andExpect(status().isOk())
		 			.andExpect(jsonPath("$.*", Matchers.hasSize(3)))
		 			.andExpect(jsonPath("$[0].*", Matchers.hasSize(2)))
		 			.andExpect(jsonPath("$[0].id",is(1)))
		 			.andExpect(jsonPath("$[0].nombreUniversidad",is("uno")))
		 			.andExpect(jsonPath("$[1].id",is(2)))
		 			.andExpect(jsonPath("$[1].nombreUniversidad",is("dos")))
		 			.andExpect(jsonPath("$[2].id",is(3)))
		 			.andExpect(jsonPath("$[2].nombreUniversidad",is("tres")));
	}
	@Test
	public void testGetAll2() throws Exception {
		Universidades first = new Universidades();
		first.setId(1);
		first.setNombreUniversidad("uno");
		Universidades second = new Universidades();
		second.setId(2);
		second.setNombreUniversidad("dos");
		Universidades tres = new Universidades();
		tres.setId(3);
		tres.setNombreUniversidad("tres");
		Universidades cuarto = new Universidades();
		cuarto.setId(4);
		cuarto.setNombreUniversidad("cuarto");
		ArrayList<Universidades> lista = new ArrayList<Universidades>();
		lista.add(first);lista.add(second);lista.add(tres);lista.add(cuarto);
		when(universidadesRepository.findAll()).thenReturn(lista);		
		ArrayList<Universidades> lista2 = (ArrayList<Universidades>) lista.clone();
		ArrayList<Universidades> lista3 = (ArrayList<Universidades>) controller.getAll();
		System.out.println(lista3.size());
		System.out.println(lista.size());
		System.out.println(lista2.size());
		assertThat(lista3.size()).isEqualTo(lista2.size()-1);
		assertThat(lista3.get(0).getId()).isEqualTo(lista2.get(0).getId());
	
		
		
		/* mockMvc.perform(get("/rest/universidades/all")
	                .accept(MediaType.APPLICATION_JSON))
		 			.andExpect(status().isOk())
		 			.andExpect(jsonPath("$.*", Matchers.hasSize(3)))
		 			.andExpect(jsonPath("$[0].*", Matchers.hasSize(2)))
		 			.andExpect(jsonPath("$[0].id",is(1)))
		 			.andExpect(jsonPath("$[0].nombreUniversidad",is("uno")))
		 			.andExpect(jsonPath("$[1].id",is(2)))
		 			.andExpect(jsonPath("$[1].nombreUniversidad",is("dos")))
		 			.andExpect(jsonPath("$[2].id",is(3)))
		 			.andExpect(jsonPath("$[2].nombreUniversidad",is("tres")));*/
	}
}
