package com.uneatlantico.universidaders.resource;

import com.uneatlantico.universidaders.model.Outcom;
import com.uneatlantico.universidaders.repository.OutcomRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/rest/outcom")
public class OutcomResource {
    @Autowired
    OutcomRepository outcomRepository;

    @GetMapping("/all")
    public List<Outcom> getAll(){
        return outcomRepository.findAll();
    }

    @PostMapping("/Byid")
    public Outcom getOutcom(@RequestBody Map<String,Integer> json){
        Iterator iterator = json.keySet().iterator();
        Outcom outcom = new Outcom();
        if(iterator.hasNext())
        {
            String i = iterator.next().toString();
            outcom=outcomRepository.findByid(json.get(i));
        }
        return outcom;
    }

}
