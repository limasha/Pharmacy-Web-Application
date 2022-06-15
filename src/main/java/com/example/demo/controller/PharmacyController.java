package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Pharmacy;
import com.example.demo.services.PharmacyService;

@Controller
@RequestMapping("/pharmacy")
public class PharmacyController {

	@Autowired
	PharmacyService pharmacyService;	

	@RequestMapping("/index")
	public String home() 
	{
		return "index";
	}
	
	 @RequestMapping(value="/list", method=RequestMethod.GET)
	 public ModelAndView list(@Param("keyword") String keyword) {

	  ModelAndView mv = new ModelAndView("medicine_list");
	  List<Pharmacy> medicineList = pharmacyService.getAllMedicines(keyword);
	  mv.addObject("medicineList", medicineList);
	
	  return mv;
	 }
	 
	 
	 @RequestMapping(value="/addMedicine", method=RequestMethod.GET)
	 public ModelAndView addMedicine() {
		 
	  ModelAndView mv = new ModelAndView();
	  Pharmacy pharmacy = new Pharmacy();
	  mv.addObject("medicineForm", pharmacy);
	  mv.setViewName("medicine_form");
	  
	  return mv;
	 }
	 
	 @RequestMapping(value="/addMedicine", method=RequestMethod.POST)
	 public ModelAndView add(@ModelAttribute("medicineForm") Pharmacy pharmacy) {
		 
	  pharmacyService.addMedicine(pharmacy);
	  return new ModelAndView("redirect:/pharmacy/addMedicine");
	  
	 }
	 
	 @RequestMapping(value="/editMedicine/{id}", method=RequestMethod.GET)
	 public ModelAndView editMedicine(@PathVariable int id) {
	  ModelAndView mv = new ModelAndView();
	  
	  Pharmacy pharmacy = pharmacyService.getMedicineById(id);
	  mv.addObject("medicineUpdateForm", pharmacy);
	  mv.setViewName("medicine_updateForm");
	  
	  return mv;
	 }
	 
	 @RequestMapping(value="/editMedicine/{id}", method=RequestMethod.POST)
	 public ModelAndView edit(@ModelAttribute("medicineUpdateForm") Pharmacy pharmacy) {
		 
	  pharmacyService.addMedicine(pharmacy);
	  return new ModelAndView("redirect:/pharmacy/list");
	  
	 }
	 
	 
	 @RequestMapping(value="/deleteMedicine/{id}", method=RequestMethod.GET)
	 public ModelAndView delete(@PathVariable("id") int id) {
		 
	  pharmacyService.deleteMedicine(id);
	  return new ModelAndView("redirect:/pharmacy/list");
	  
	 }		 
	 
}
