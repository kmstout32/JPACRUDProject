package com.skilldistillery.plants.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
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
//				em.find("plant", Plant.class);
//			    // start the transaction
			    em.getTransaction();
//			    // write the customer to the database
			    em.persist(plant);
//			    // update the "local" Customer object
			    em.flush();
//			    // commit the changes (actually perform the operation)
			    em.getTransaction();
//
//		
		return null;
	}
	@Override
	public Plant update(Integer id, Plant plant) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean destroy(int plantId) {
		// TODO Auto-generated method stub
		return false;
	}

}
