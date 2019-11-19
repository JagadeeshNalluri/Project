package com.dineshonjava.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.dineshonjava.dao.RentDao;
import com.dineshonjava.model.Rent;

 
@Service("rentService")
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)
public class RentServiceImpl implements RentService {

	@Autowired
	private RentDao rentDao;
	
	@Transactional(propagation = Propagation.REQUIRED, readOnly = false)
	public void addRent(Rent rent) {
		rentDao.addRent(rent);
	}
	
	public List<Rent> listRentss() {
		return rentDao.listRentss();
	}

	public Rent getRent(int id) {
		return rentDao.getRent(id);
	}
	
	public void deleteRent(Rent rent) {
		rentDao.deleteRent(rent);
	}
}


