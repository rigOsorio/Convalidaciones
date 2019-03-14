package com.uneatlantico.universidaders.resource;

import com.uneatlantico.universidaders.model.Outcom;
import com.uneatlantico.universidaders.repository.OutcomRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/rest/outcom")
public class OutcomResource {
    @Autowired
    OutcomRepository outcomRepository;

    @GetMapping("/all")
    public List<Outcom> getAll(){
        return outcomRepository.findAll();
    }

    @GetMapping("/{id}")
    public Outcom getOutcom(@PathVariable("id") final Integer id){
        return outcomRepository.findByid(id);
    }

    public String getOUtcom(Integer id){
        return outcomRepository.findByid(id).getDescripcionOutcom();
    }
}
