package com.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "transaction_details")
public class Transaction {
	
	@Id
	@Column(name = "sourceaccount_id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int sourceaccountid;
	
	@Column(name = "sourceaccount_type")
	private String sourceaccounttype;
	
	@Column(name = "amount")
	private int amount;
	
	@Column(name = "date")
	private String date;
	
	@Column(name = "target_accountid")
	private int targetaccountid;
	
	@Column(name = "target_accounttype")
	private String targetaccounttype;
	
	@Column(name = "transaction_id")
	private int transactionid;
	
	@Column(name = "type")
	private String type;

	public Transaction(int sourceaccountid, String sourceaccounttype, int amount, String date, int targetaccountid,
			String targetaccounttype, int transactionid, String type) {
		super();
		this.sourceaccountid = sourceaccountid;
		this.sourceaccounttype = sourceaccounttype;
		this.amount = amount;
		this.date = date;
		this.targetaccountid = targetaccountid;
		this.targetaccounttype = targetaccounttype;
		this.transactionid = transactionid;
		this.type = type;
	}

	public int getSourceaccountid() {
		return sourceaccountid;
	}

	public void setSourceaccountid(int sourceaccountid) {
		this.sourceaccountid = sourceaccountid;
	}

	public String getSourceaccounttype() {
		return sourceaccounttype;
	}

	public void setSourceaccounttype(String sourceaccounttype) {
		this.sourceaccounttype = sourceaccounttype;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getTargetaccountid() {
		return targetaccountid;
	}

	public void setTargetaccountid(int targetaccountid) {
		this.targetaccountid = targetaccountid;
	}

	public String getTargetaccounttype() {
		return targetaccounttype;
	}

	public void setTargetaccounttype(String targetaccounttype) {
		this.targetaccounttype = targetaccounttype;
	}

	public int getTransactionid() {
		return transactionid;
	}

	public void setTransactionid(int transactionid) {
		this.transactionid = transactionid;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	
}
