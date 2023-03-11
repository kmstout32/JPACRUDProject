package com.skilldistillery.plants.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.plants.data.PlantDAO;
import com.skilldistillery.plants.entities.Plant;

@Controller
public class PlantController {
	@Autowired
	private PlantDAO dao;
	
	
	@RequestMapping(path="getPlant.do")
	public String showPlant(Integer pid, Model model) {
		Plant plant = dao.findByID(pid);
		model.addAttribute("plant", plant);
		if(plant != null) {
			return "show";
		} else {
			return "error";
		}
			
		
	}
//	TAKES USER TO MAIN LANDING PAGE
	@RequestMapping(path={"/", "home.do"})
	public String goHome(Model mod) {
		mod.addAttribute("plants", dao.findAll());
		
		return "home";
		
	}
	
	@RequestMapping(path= "create.do")
	public String createPlantForm(Model mod, Plant plant) {
		return "addplant";
	}
	
	@RequestMapping(path = "addplant.do", method = RequestMethod.POST)
	public String createPlant(Model mod, Plant plant) {
		Plant createdPlant = dao.create(plant);
		if (createdPlant != null) {
			mod.addAttribute(createdPlant);
			return "show";
		} else {
			return "error";
		}
	}
}
