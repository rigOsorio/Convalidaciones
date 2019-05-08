package com.uneatlantico.universidaders.resource;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.Assert.*;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.uneatlantico.universidaders.model.Contenido;
import com.uneatlantico.universidaders.repository.ContenidoRepository;

@RunWith(SpringJUnit4ClassRunner.class)
public class ContenidoResourceTest {
	
	@Mock
	ContenidoRepository contenidoRepository;
	
	@InjectMocks
	ContenidoResource resource;
	

	@Test
	public void testGetAll() {
		Contenido a = new Contenido();	
		a.setContenidos("data1");
		Contenido b = new Contenido();	
		b.setContenidos("data2");
		Contenido c = new Contenido();	
		c.setContenidos("data3");
		List<Contenido> lista = new ArrayList<Contenido>();
		lista.add(a);lista.add(b);lista.add(c);
		when(contenidoRepository.findAll()).thenReturn(lista);
		ArrayList<String> lista2 = (ArrayList<String>) resource.getAll();
		assertThat("data1").isEqualTo(lista2.get(0));
		assertThat("data2").isEqualTo(lista2.get(1));
		assertThat("data3").isEqualTo(lista2.get(2));
	}

	@Test
	public void testGetContenido() {
		
		Contenido a = new Contenido();	
		a.setContenidos("data1");
		Contenido b = new Contenido();	
		b.setContenidos("data2");
		Contenido c = new Contenido();	
		c.setContenidos("data3");
		List<Contenido> lista = new ArrayList<Contenido>();
		lista.add(a);lista.add(b);lista.add(c);
		when(contenidoRepository.findByidAsignatura(0)).thenReturn(lista);	
		Map<String,Integer> mapa = new HashMap<String, Integer>();
		mapa.put("0", 0);
		mapa.put("1",1 );
		mapa.put("2",2 );
		ArrayList<String> lista2 = (ArrayList<String>) resource.getContenido(mapa);
		
		assertThat("data1").isEqualTo(lista2.get(0));
		assertThat("data2").isEqualTo(lista2.get(1));
		assertThat("data3").isEqualTo(lista2.get(2));
		
		
	}

}
//when().thenReturn();