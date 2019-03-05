package com.uneatlantico.universidaders.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import com.uneatlantico.universidaders.model.Grados;

public interface GradosRepository extends JpaRepository<Grados, Integer>{
	List<Grados> findByidUniversidad(Integer idUniversidad);
}
