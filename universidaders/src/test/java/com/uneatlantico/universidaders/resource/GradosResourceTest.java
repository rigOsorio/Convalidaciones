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

import com.uneatlantico.universidaders.model.Grados;
import com.uneatlantico.universidaders.repository.GradosRepository;



@RunWith(SpringJUnit4ClassRunner.class)
public class GradosResourceTest {

	@Mock
	GradosRepository gradosRepository;
	
	@InjectMocks
	private GradosResource controller;
	
	
	@Test
	public void testGetGrados() {
	Grados a = new Grados();
	a.setId(0);
	a.setIdUniversidad(0);
	a.setNombreGrado("cero");
	Grados b = new Grados();
	b.setId(1);
	b.setIdUniversidad(0);
	b.setNombreGrado("uno");
	Grados c = new Grados();
	c.setId(2);
	c.setIdUniversidad(0);
	c.setNombreGrado("dos");
	Grados d = new Grados();
	d.setId(3);
	d.setIdUniversidad(0);
	d.setNombreGrado("tres");
	List<Grados> lista = new ArrayList<Grados>();
	lista.add(a);lista.add(b);lista.add(c);lista.add(d);
	when(gradosRepository.findByidUniversidad(0)).thenReturn(lista);	
	List<Grados> lista2 = controller.getGrados(0);

	
	
	assertThat(lista2.size()).isEqualTo(4);
	assertThat(lista2.get(0).getId()).isEqualTo(0);
	assertThat(lista2.get(1).getId()).isEqualTo(1);
	assertThat(lista2.get(2).getId()).isEqualTo(2);
	assertThat(lista2.get(3).getId()).isEqualTo(3);
	//assertThat().isEqualTo()
	//when().thenReturn();		
	}

}
