package com.dineshonjava.service;

import java.util.List;


import com.dineshonjava.model.Rent;

 
public interface RentService {
	
	public void addRent(Rent rent);

	public List<Rent> listRentss();
	
	public Rent getRent(int id);
	
	public void deleteRent(Rent rent);
}