package com.pojo;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "customer_details")
public class Customer{
	
	@Id	
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int customerid;
	
	private int customerSsdId;
	
	private String name;
	
	private int age;
	
	private String address;
	
	private String state;
	
	private String city;
	
	private String status="Active";
	
	private String message;
	
	private String lastupdated;
	
	private String date;
	
	@OneToMany(mappedBy = "customer")
	private List<Account> accounts;

	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Customer(int customerid, int customerSsdId, String name, int age, String address, String state, String city,
			String status, String message, String lastupdated, String date, List<Account> accounts) {
		super();
		this.customerid = customerid;
		this.customerSsdId = customerSsdId;
		this.name = name;
		this.age = age;
		this.address = address;
		this.state = state;
		this.city = city;
		this.status = status;
		this.message = message;
		this.lastupdated = lastupdated;
		this.date = date;
		this.accounts = accounts;
	}

	@Override
	public String toString() {
		return "Customer [customerid=" + customerid + ", customerSsdId=" + customerSsdId + ", name=" + name + ", age="
				+ age + ", address=" + address + ", state=" + state + ", city=" + city + ", status=" + status
				+ ", message=" + message + ", lastupdated=" + lastupdated + ", date=" + date + ", accounts=" + accounts
				+ "]";
	}

	public int getCustomerid() {
		return customerid;
	}

	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}

	public int getCustomerSsdId() {
		return customerSsdId;
	}

	public void setCustomerSsdId(int customerSsdId) {
		this.customerSsdId = customerSsdId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getLastupdated() {
		return lastupdated;
	}

	public void setLastupdated(String lastupdated) {
		this.lastupdated = lastupdated;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public List<Account> getAccounts() {
		return accounts;
	}

	public void setAccounts(List<Account> accounts) {
		this.accounts = accounts;
	}

}
