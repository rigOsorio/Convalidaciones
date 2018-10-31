package com.example.demo.dao;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.domel.Alien;

public interface AlienRepo extends CrudRepository<Alien, Integer>{
	
	
}
