package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import com.example.demo.model.Pharmacy;

public interface PharmacyRepository extends CrudRepository<Pharmacy, Integer>{
	
	@Query("SELECT p FROM Pharmacy p WHERE p.medicine_name LIKE %?1%")
	public List<Pharmacy> findAll(String keyword);
}
