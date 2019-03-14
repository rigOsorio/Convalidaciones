package com.uneatlantico.universidaders.repository;

import com.uneatlantico.universidaders.model.Outcom;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OutcomRepository extends JpaRepository<Outcom,Integer> {
    Outcom findByid(Integer id);
}
