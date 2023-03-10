package com.skilldistillery.plants.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.fail;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class PlantTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Plant plant;
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAPlantsApp");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		plant = em.find(Plant.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		plant = null;
	}
	@Test
	void test_plant_entity_mapping() {
		assertNotNull(plant);
		assertEquals("pothos", plant.getName());
		assertEquals("an evergreen plant with thick, waxy, green, heart-shaped leaves with splashes of yellow",plant.getDescription());
	}
}
