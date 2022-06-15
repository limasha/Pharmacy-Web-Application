package com.example.demo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.model.Pharmacy;
import com.example.demo.repository.PharmacyRepository;

@Service
@Transactional
public class PharmacyServiceImplementation implements PharmacyService{

	@Autowired
	PharmacyRepository pharmacyRepo;
	
	@Override
	public List<Pharmacy> getAllMedicines(String keyword) {
		if(keyword != null) {
			return pharmacyRepo.findAll(keyword);
		}
		return (List<Pharmacy>) pharmacyRepo.findAll();
	}

	@Override
	public Pharmacy getMedicineById(int id) {
		return pharmacyRepo.findById(id).get();
	}

	@Override
	public void addMedicine(Pharmacy pharmacy) {
		pharmacyRepo.save(pharmacy);
	}

	@Override
	public void deleteMedicine(int id) {
		pharmacyRepo.deleteById(id);
	}	

}
