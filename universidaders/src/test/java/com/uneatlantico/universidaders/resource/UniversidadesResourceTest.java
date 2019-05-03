package com.uneatlantico.universidaders.resource;
import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.*;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.hamcrest.Matchers;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import com.uneatlantico.universidaders.model.Universidades;
import com.uneatlantico.universidaders.repository.UniversidadesRepository;
import com.uneatlantico.universidaders.resource.UniversidadesResource;


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
		
		Universidades primero = new Universidades();
		primero.setId(1);
		primero.setNombreUniversidad("uno");
		Universidades segundo = new Universidades();
		segundo.setId(2);
		segundo.setNombreUniversidad("dos");
		Universidades tercero = new Universidades();
		tercero.setId(3);
		tercero.setNombreUniversidad("tres");
		Universidades cuarto = new Universidades();
		cuarto.setId(4);
		cuarto.setNombreUniversidad("cuarto");
		List<Universidades> lista = new ArrayList<Universidades>();
		lista.add(primero);lista.add(segundo);lista.add(tercero);lista.add(cuarto);
		when(universidadesRepository.findAll()).thenReturn(lista);		
		 mockMvc.perform(get("/rest/universidades/all")
	                .accept(MediaType.APPLICATION_JSON))
		 			.andExpect(status().isOk())
		 			.andExpect(jsonPath("$.*", Matchers.hasSize(4)))
		 			.andExpect(jsonPath("$[0].*", Matchers.hasSize(2)))
		 			.andExpect(jsonPath("$[0].id",is(1)))
		 			.andExpect(jsonPath("$[0].nombreUniversidad",is("uno")))
		 			.andExpect(jsonPath("$[1].id",is(2)))
		 			.andExpect(jsonPath("$[1].nombreUniversidad",is("dos")))
		 			.andExpect(jsonPath("$[2].id",is(3)))
		 			.andExpect(jsonPath("$[2].nombreUniversidad",is("tres")))
		 			.andExpect(jsonPath("$[3].id",is(4)))
		 			.andExpect(jsonPath("$[3].nombreUniversidad",is("cuarto")));
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
		 mockMvc.perform(get("/rest/universidades/all2")
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

}
