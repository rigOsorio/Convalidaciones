
package com.uneatlantico.universidaders.resource;

import com.uneatlantico.universidaders.model.Asignaturas;
import com.uneatlantico.universidaders.repository.AsignaturaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/rest/asignaturas")
public class AsignaturasResource {
    @Autowired
    AsignaturaRepository asignaturaRepository;

    @Autowired
    OutcomResource outcomResource;

    @GetMapping("/all")
    public List<Asignaturas> getAll(){
        return asignaturaRepository.findAll();
    }

    @GetMapping("/asignaturas/{IdGrado}")
    public List<Asignaturas> findByIdGrado(@PathVariable("IdGrado") final int IdGrado){
        List<Asignaturas> asignaturas = asignaturaRepository.findAllByIdGrado(IdGrado);
        return  asignaturas;
    }
    @GetMapping("/contenidoOutcom")
    public String getOutcom(){
        return outcomResource.getOutcom(asignaturaRepository.findAll().get(1).getIdOutcom()).getDescripcionOutcom();
    }
}