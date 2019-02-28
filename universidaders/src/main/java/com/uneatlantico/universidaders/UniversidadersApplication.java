package com.uneatlantico.Universidaders;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@EnableJpaRepositories(basePackages = "com.uneatlantico.Universidaders.repository")
@SpringBootApplication
public class UniversidadersApplication {

	public static void main(String[] args) {
		SpringApplication.run(UniversidadersApplication.class, args);
	}

}
