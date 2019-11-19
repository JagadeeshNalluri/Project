package com.dineshonjava.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.dineshonjava.model.Rent;

 
@Repository("rentDao")
public  class RentDaoImpl implements RentDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addRent(Rent rent) {
		sessionFactory.getCurrentSession().saveOrUpdate(rent);
	}

	@SuppressWarnings("unchecked")
	public List<Rent> listRentss() {
		return (List<Rent>) sessionFactory.getCurrentSession().createCriteria(Rent.class).list();
	}

	public Rent getRent(int id) {
		return (Rent) sessionFactory.getCurrentSession().get(Rent.class, id);
	}

	public void deleteRent(Rent rent) {
		sessionFactory.getCurrentSession().createQuery("DELETE FROM Rent WHERE id = "+rent.getId()).executeUpdate();
	}

}