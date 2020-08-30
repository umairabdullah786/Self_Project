package com.pojo;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "account_details")
public class Account {
	
	@Id	
	@GeneratedValue(strategy = GenerationType.AUTO)	
	private int accountid;
	
	private int customerid;
	
	private String accounttype;
	
	private int balance;
	
	private String date;
	
	private String status="Active";

	private String message;
	
	@ManyToOne(cascade = CascadeType.ALL)
	private Customer customer;

	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Account(int accountid, int customerid, String accounttype, int balance, String date, String status,
			String message, Customer customer) {
		super();
		this.accountid = accountid;
		this.customerid = customerid;
		this.accounttype = accounttype;
		this.balance = balance;
		this.date = date;
		this.status = status;
		this.message = message;
		this.customer = customer;
	}

	@Override
	public String toString() {
		return "Account [accountid=" + accountid + ", customerid=" + customerid + ", accounttype=" + accounttype
				+ ", balance=" + balance + ", date=" + date + ", status=" + status + ", message=" + message
				+ ", customer=" + customer + "]";
	}

	public int getAccountid() {
		return accountid;
	}

	public void setAccountid(int accountid) {
		this.accountid = accountid;
	}

	public int getCustomerid() {
		return customerid;
	}

	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}

	public String getAccounttype() {
		return accounttype;
	}

	public void setAccounttype(String accounttype) {
		this.accounttype = accounttype;
	}

	public int getBalance() {
		return balance;
	}

	public void setBalance(int balance) {
		this.balance = balance;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
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

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	

}
