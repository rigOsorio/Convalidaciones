package com.uneatlantico.universidaders.resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.uneatlantico.universidaders.model.Uneatlantico;
import com.uneatlantico.universidaders.repository.UneatlanticoRepository;

import java.util.List;

@RestController
@RequestMapping("/rest/uneatlanticos")
public class UneatlanticoResource {

    @Autowired
    UneatlanticoRepository uneatlanticoRepository;

    @GetMapping("/all")
    public List<Uneatlantico> getAll(){
        return uneatlanticoRepository.findAll();
    }
}
