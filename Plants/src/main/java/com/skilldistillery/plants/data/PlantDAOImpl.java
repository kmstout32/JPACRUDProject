package com.skilldistillery.plants.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.plants.entities.Plant;
@Service
@Transactional
public class PlantDAOImpl implements PlantDAO {
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Plant findByID(int id) {
		// TODO Auto-generated method stub
		return em.find(Plant.class, id);
	}

	@Override
	public List<Plant> findAll() {
		String jpql = "SELECT p FROM Plant p";
		
		return em.createQuery(jpql, Plant.class).getResultList();
	}

//REMINDER : NO begin/close
//			NO em.close();
	@Override
	public Plant create(Plant plant) {
			    em.persist(plant);
		return plant;
	}
	@Override
	public Plant update(Integer id, Plant plant) {
		Plant updatePlant = em.find(Plant.class, id);
		
		if (plant != null) {
			updatePlant.setName(plant.getName());
			updatePlant.setDescription(plant.getDescription());
			updatePlant.setLighting(plant.getLighting());
			updatePlant.setOrigin(plant.getOrigin());
			updatePlant.setPrice(plant.getPrice());
			updatePlant.setOrigin(plant.getOrigin());
			updatePlant.setToxicity(plant.getToxicity());
			updatePlant.setWatering(plant.getWatering());
			em.persist(updatePlant);
		}
		return updatePlant;
	}

	@Override
	public boolean destroy(int plantId) {
		boolean success = false;
		Plant plant = em.find(Plant.class, plantId);
		if(plant != null) {
			em.remove(plant);
			success = !em.contains(plant);
		}
		return success;
	}

}
