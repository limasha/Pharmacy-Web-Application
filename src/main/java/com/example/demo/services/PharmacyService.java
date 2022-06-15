package com.example.demo.services;

import java.util.List;

import com.example.demo.model.Pharmacy;

public interface PharmacyService {

	 public List<Pharmacy> getAllMedicines(String keyword);
	 
	 public Pharmacy getMedicineById(int id);
	 
	 public void addMedicine(Pharmacy pharmacy);
	 
	 public void deleteMedicine(int id);	 
	 
}
