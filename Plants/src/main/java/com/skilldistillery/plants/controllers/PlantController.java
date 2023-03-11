package com.skilldistillery.plants.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
		
		return "show";
		
	}
//	TAKES USER TO MAIN LANDING PAGE
	@RequestMapping(path={"/", "home.jsp"})
	public String goHome(Model mod) {
		mod.addAttribute("plants", dao.findAll());
		
		return "home";
		
	}
}
