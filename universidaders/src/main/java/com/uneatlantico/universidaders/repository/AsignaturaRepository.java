package com.uneatlantico.universidaders.repository;

import com.uneatlantico.universidaders.model.Asignaturas;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.List;
//Creamos el repositorio y debe extender de JpaRepository para heredar todos los métodos de JPA
//le pasamos el nombre de la tabla entity a la cual va a hacer referencia y el tipo de variable del id
public interface AsignaturaRepository extends JpaRepository<Asignaturas,Integer> {
    //creamos un metodo que retornara una lista de Asignaturas que buscara por el id del grado que le pasemos
    //idGrado es un atributo de Asignaturas
     List<Asignaturas> findAllByIdGrado(@PathVariable("IdGrado") final int IdGrado);

    //creamos un metodo que retornara una objetod Asignatura segun el id que le pasemos
     Asignaturas findByid(Integer id);
}
