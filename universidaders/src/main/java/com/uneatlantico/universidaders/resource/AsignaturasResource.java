
package com.uneatlantico.universidaders.resource;

import com.uneatlantico.universidaders.model.Asignaturas;
import com.uneatlantico.universidaders.model.Outcom;
import com.uneatlantico.universidaders.repository.AsignaturaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/rest/asignaturas")
public class AsignaturasResource {
    @Autowired
    AsignaturaRepository asignaturaRepository;

    private List<Asignaturas> listaAporabadas=new ArrayList<Asignaturas>();
    private List<Asignaturas> listaEquivalencia=new ArrayList<Asignaturas>();//almacena una lista con las asignaturas que equivalen

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
    @PostMapping("/aprovadas")
    public List<Asignaturas> getAprobadas(@RequestParam("List<Integer>") List<Integer> lista) {
        for(int i=0;i<lista.size();i++) {
            if(asignaturaRepository.findByid(lista.get(i)).getValidacion()==1)
                listaAporabadas.add(asignaturaRepository.findByid(lista.get(i)));
                listaEquivalencia.add(asignaturaRepository.findByid(listaAporabadas.get(i).getIdAsigantura()));
        }
        return listaAporabadas;
    }
    public List<Outcom> getListaOutcom(List<Asignaturas> lista) {
        List<Outcom>lista2=new ArrayList<>();
        for(int j=0;j<lista.size();j++){
            lista2.add(outcomResource.getOutcom(lista.get(j).getIdOutcom()));
        }
        return lista2;
    }

    public List<Integer> separarId(String lista){
        String[] list;
        List<Integer> listaId=new ArrayList<Integer>();
        list=(lista.split(","));
        for(int i=0;i<list.length;i++){
            listaId.add(Integer.parseInt(list[i]));
        }
        return listaId;
    }
}