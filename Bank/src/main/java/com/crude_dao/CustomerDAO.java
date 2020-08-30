package com.crude_dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.pojo.Customer;

@Component
public class CustomerDAO {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	//Create
	@Transactional
	public void createCustomer(Customer customer) {

		this.hibernateTemplate.saveOrUpdate(customer);

	}
	
	// get all customer details
	public List<Customer> getCustomers() {

		List<Customer> customers = this.hibernateTemplate.loadAll(Customer.class);
		return customers;
	}

	// get the single customer
	public Customer getCustomer(int cid) {
		return this.hibernateTemplate.get(Customer.class, cid);
	}

	// Delete the single customer
	@Transactional
	public void deleteCustomer(int cid) {

		Customer c = this.hibernateTemplate.load(Customer.class, cid);
		this.hibernateTemplate.delete(c);
	}
		
}
