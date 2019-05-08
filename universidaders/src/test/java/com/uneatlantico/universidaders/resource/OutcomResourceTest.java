package com.uneatlantico.universidaders.resource;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.Assert.*;
import static org.mockito.Mockito.when;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.uneatlantico.universidaders.model.Outcom;
import com.uneatlantico.universidaders.repository.OutcomRepository;



@RunWith(SpringJUnit4ClassRunner.class)
public class OutcomResourceTest {
	
@Mock
OutcomRepository outcomRepository;

@InjectMocks
OutcomResource resource ;

	@Test
	public void testGetOutcom() {
		Outcom a =  new Outcom();
		a.setDescripcionOutcom("salida1");
		Outcom b =  new Outcom();
		b.setDescripcionOutcom("salida2");
		when(outcomRepository.findByid(0)).thenReturn(a);	
		when(outcomRepository.findByid(1)).thenReturn(b);	
		Map<String,Integer> mapa = new HashMap<String, Integer>();
		Map<String,Integer> mapa2 = new HashMap<String, Integer>();
		mapa.put("0", 0);
		mapa2.put("1",1 );
		
		assertThat("salida1").isEqualTo(resource.getOutcom(mapa).getDescripcionOutcom());
		assertThat("salida2").isEqualTo(resource.getOutcom(mapa2).getDescripcionOutcom());
		
	}

}
//assertThat().isEqualTo()
	//when().thenReturn();	