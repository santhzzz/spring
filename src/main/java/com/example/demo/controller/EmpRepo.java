package com.example.demo.controller;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Repository;

@EnableJpaRepositories
@Repository
public interface EmpRepo extends JpaRepository<Employee, Integer> {

	
	
	
}

//basepackage ={"com.example.demo"}

//com.example.demo
//com.example.demo.repository
//com.example.demo.model
//com.demo.controller