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
import org.springframework.data.repository.support.Repositories;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.uneatlantico.universidaders.model.Asignaturas;
import com.uneatlantico.universidaders.model.Grados;
import com.uneatlantico.universidaders.model.Outcom;
import com.uneatlantico.universidaders.model.Universidades;
import com.uneatlantico.universidaders.repository.AsignaturaRepository;


@RunWith(SpringJUnit4ClassRunner.class)
public class AsignaturasResourceTest  {
	
		@Mock
	AsignaturaRepository asignaturaRepository;
	
	@Mock
	ContenidoResource contenidoResource;
	
	@Mock
	OutcomResource  outcomResource;
	
	@InjectMocks
	AsignaturasResource resource;
	
		@Test
	public void testFindByIdGrado() {
			Asignaturas a = new Asignaturas();
			Asignaturas b = new Asignaturas();
			Asignaturas c = new Asignaturas();
			ArrayList<Asignaturas> lista = new ArrayList<Asignaturas>();
			lista.add(a);lista.add(b);lista.add(c);
			ArrayList<Asignaturas> lista2 = (ArrayList<Asignaturas>) lista.clone();
			when(asignaturaRepository.findAllByIdGrado(0)).thenReturn(lista);	
			ArrayList<Asignaturas> lista3 = (ArrayList<Asignaturas>) resource.findByIdGrado(0);
			assertThat(lista3).isEqualTo(lista2);	
	}
	
	
		@Test
		public void testGetAprobadas() {
			
			Asignaturas a = new Asignaturas();
			a.setValidacion(1);
			Asignaturas b = new Asignaturas();
			b.setValidacion(1);
			Asignaturas c = new Asignaturas();
			c.setValidacion(1);
			Asignaturas d = new Asignaturas();
			d.setValidacion(0);
			Asignaturas e = new Asignaturas();
			e.setValidacion(0);
			Asignaturas f = new Asignaturas();
			f.setValidacion(1);
			when(asignaturaRepository.findByid(0)).thenReturn(a);	
			when(asignaturaRepository.findByid(1)).thenReturn(b);	
			when(asignaturaRepository.findByid(2)).thenReturn(c);
			when(asignaturaRepository.findByid(3)).thenReturn(d);
			when(asignaturaRepository.findByid(4)).thenReturn(e);
			when(asignaturaRepository.findByid(5)).thenReturn(f);
			Map<String,Integer> mapa = new HashMap<String, Integer>();
			mapa.put("0", 0);
			mapa.put("1",1 );
			mapa.put("2",2 );
			mapa.put("3",3 );
			mapa.put("4",4 );
			mapa.put("4",5 );
			List<Asignaturas> lista = resource.getAprobadas(mapa);
			assertThat(lista.size()).isEqualTo(4);

		}

		@Test
		public void testGetNoAprobadas() {
			Asignaturas a = new Asignaturas();
			a.setValidacion(1);
			Asignaturas b = new Asignaturas();
			b.setValidacion(1);
			Asignaturas c = new Asignaturas();
			c.setValidacion(1);
			Asignaturas d = new Asignaturas();
			d.setValidacion(0);
			Asignaturas e = new Asignaturas();
			e.setValidacion(0);
			Asignaturas f = new Asignaturas();
			f.setValidacion(1);
			when(asignaturaRepository.findByid(0)).thenReturn(a);	
			when(asignaturaRepository.findByid(1)).thenReturn(b);	
			when(asignaturaRepository.findByid(2)).thenReturn(c);
			when(asignaturaRepository.findByid(3)).thenReturn(d);
			when(asignaturaRepository.findByid(4)).thenReturn(e);
			when(asignaturaRepository.findByid(5)).thenReturn(f);
			Map<String,Integer> mapa = new HashMap<String, Integer>();
			mapa.put("0", 0);
			mapa.put("1",1 );
			mapa.put("2",2 );
			mapa.put("3",3 );
			mapa.put("4",4 );
			mapa.put("5",5 );
			List<Asignaturas> lista = resource.getNoAprobadas(mapa);
			assertThat(lista.size()).isEqualTo(2);
		}
		
		
		@Test
		public void testGetUneatlantico() {
			Asignaturas a = new Asignaturas();
			Asignaturas b = new Asignaturas();
			Asignaturas c = new Asignaturas();
			ArrayList<Asignaturas> lista = new ArrayList<Asignaturas>();
			lista.add(a);lista.add(b);lista.add(c);
			when(asignaturaRepository.findAllByIdGrado(4)).thenReturn(lista);
			ArrayList<Asignaturas> lista2 = (ArrayList<Asignaturas>) lista.clone();
			List<Asignaturas> lista3 = (ArrayList<Asignaturas>) resource.getUneatlantico();
			assertThat(lista2.size()).isEqualTo(lista3.size());
		}
		
		@Test
		public void testGetCreditos() {
			Asignaturas a = new Asignaturas();
			a.setCreditoss(16);
			when(asignaturaRepository.findByid(0)).thenReturn(a);
			assertThat(16).isEqualTo(resource.getCreditos(0));
		}
		
		@Test
		public void testGetContenido() {
			Map<String,Integer> mapa = new HashMap<String, Integer>();
			 List<String> lista = new ArrayList<String>();
			 lista.add("linea1");lista.add("linea2");lista.add("linea3");
			 when(contenidoResource.getContenido(mapa)).thenReturn(lista);
			 assertThat("linea1").isEqualTo(resource.getContenido(mapa).get(0));
			 assertThat(3).isEqualTo(resource.getContenido(mapa).size());
			 
		
		}
		
		@Test
		public void testGetOutcom() {
			Outcom a = new Outcom(); 
			a.setDescripcionOutcom("linea1");
			Map<String,Integer> mapa = new HashMap<String, Integer>();
			 List<String> lista = new ArrayList<String>();
			 lista.add("linea1");lista.add("linea2");lista.add("linea3");
			 when(contenidoResource.getContenido(mapa)).thenReturn(lista);
			 assertThat("linea1").isEqualTo(resource.getContenido(mapa).get(0));
			 assertThat(3).isEqualTo(resource.getContenido(mapa).size());
			 when(outcomResource.getOutcom(mapa)).thenReturn(a);
			 assertThat("linea1").isEqualTo(resource.getOutcom(mapa));
		}
		
		
		@Test
		public void testGetAsignatura() {
			Map<String,Integer> mapa = new HashMap<String, Integer>();
			Map<String,Integer> mapa2 = new HashMap<String, Integer>();
			mapa.put("0", 0);
			mapa2.put("1",1 );
			Asignaturas a = new  Asignaturas();
			a.setNombreAsignatura("objeto1");
			a.setId(1);
			Asignaturas b = new  Asignaturas();
			b.setNombreAsignatura("objeto2");
			b.setId(2);
			when(asignaturaRepository.findByid(0)).thenReturn(a);
			when(asignaturaRepository.findByid(1)).thenReturn(b);
			Asignaturas c =resource.getAsignatura(mapa);
			Asignaturas d =resource.getAsignatura(mapa2);
			assertThat("objeto1").isEqualTo(c.getNombreAsignatura());
			assertThat("objeto2").isEqualTo(d.getNombreAsignatura());
			
			
			
		}

		
	
		//assertThat().isEqualTo()
		//when().thenReturn();	
}
