package com.skilldistillery.plants.data;

import java.util.List;

import com.skilldistillery.plants.entities.Plant;

public interface PlantDAO {
//	RETURNS entity from id number
	public Plant findByID(int id);
	
	List<Plant> findAll();
	
	Plant create(Plant plant);
	
	Plant update(Integer id, Plant plant);
	
	boolean destroy(int plantId);
}
