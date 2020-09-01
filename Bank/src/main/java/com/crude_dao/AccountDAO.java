package com.crude_dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.pojo.Account;

import net.bytebuddy.asm.Advice.This;

@Component
public class AccountDAO {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	// Create
	@Transactional
	public void createAccount(Account account) {

		this.hibernateTemplate.saveOrUpdate(account);

	}

	// get all Account details
	public List<Account> getAccounts() {

		List<Account> accounts = this.hibernateTemplate.loadAll(Account.class);
		return accounts;
	}

	// get the single Account
	public Account getAccount(int aid) {
		return this.hibernateTemplate.get(Account.class, aid);
	}

	// Delete the single Account
	@Transactional
	public void deleteAccount(int aid) {

		Account a = this.hibernateTemplate.load(Account.class, aid);
		this.hibernateTemplate.delete(a);
	}

}
