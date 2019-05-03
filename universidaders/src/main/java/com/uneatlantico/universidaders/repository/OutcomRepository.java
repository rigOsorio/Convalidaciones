package com.uneatlantico.universidaders.repository;

import com.uneatlantico.universidaders.model.Outcom;
import org.springframework.data.jpa.repository.JpaRepository;
//Creamos el repositorio y debe extender de JpaRepository para heredar todos los métodos de JPA
//le pasamos el nombre de la tabla entity a la cual va a hacer referencia y el tipo de variable del id
public interface OutcomRepository extends JpaRepository<Outcom,Integer> {
    //El método retornara un objeto Outcom segun el Id que le pasemos
    Outcom findByid(Integer id);
}
