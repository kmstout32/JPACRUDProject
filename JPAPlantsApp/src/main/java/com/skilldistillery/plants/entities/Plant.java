package com.skilldistillery.plants.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Plant {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) 
	private int id;
	private String name;
	private String description;
	@Column(name="light")
	private String lighting;
	private String origin;
	private double price;
	private String toxicity;
	private String watering;
	
	public Plant() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getLighting() {
		return lighting;
	}
	public void setLighting(String lighting) {
		this.lighting = lighting;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getToxicity() {
		return toxicity;
	}
	public void setToxicity(String toxicity) {
		this.toxicity = toxicity;
	}
	public String getWatering() {
		return watering;
	}
	public void setWatering(String watering) {
		this.watering = watering;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Plant [id=").append(id).append(", name=").append(name).append(", description=")
				.append(description).append(", lighting=").append(lighting).append(", origin=").append(origin)
				.append(", price=").append(price).append(", toxicity=").append(toxicity).append(", watering=")
				.append(watering).append("]");
		return builder.toString();
	}
	
}
