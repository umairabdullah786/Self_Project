package com.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.crude_dao.AccountDAO;
import com.pojo.Account;
import com.pojo.Customer;

@Controller
public class AccountPageController {

	@Autowired
	private AccountDAO accountDAO;

	// Show add account form
	@RequestMapping("/add-account")
	public String addAccount(Model m) {

		m.addAttribute("title", "Add Account");
		return "Create_Account";
	}

	// Show Delete view page
	@RequestMapping("/delete-account")
	public String deleteShowCustomer(Model m) {

		m.addAttribute("title", "Delete Account");
		return "Delete_account";
	}

	@RequestMapping("/accounts_status")
	public String allAccountStatus(Model m) {

		List<Account> accounts = accountDAO.getAccounts();
		m.addAttribute("accounts", accounts);
		return "accounts_status";
	}
	
	// Handle add account form
	@RequestMapping(value = "/Account-CreateHandle", method = RequestMethod.POST)
	public RedirectView handleAccount(@ModelAttribute Account account, HttpServletRequest request) {

		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		Date datenow = new Date();
		String s = dateFormat.format(datenow);
		account.setDate(s);
		
		String m1="Account Creation Successfully";
		String m2="Customer has already "+ account.getAccounttype();
		
		int acc=account.getAccountid();
		String aType = account.getAccounttype();
		
		if(acc==0) {
			account.setMessage(m1);
		}
		
		if(aType!=null){
			account.setMessage(m2);
		}

		/*
		 * Customer customer = new Customer(); customer.getCustomerid();
		 * 
		 * account.setCustomer(customer);
		 */	

		System.out.println(account);
		accountDAO.createAccount(account);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/all_customers_details");
		return redirectView;
	}

	//Delete Account
	@RequestMapping(value = "/Account-deleteHandle", method = RequestMethod.POST)
	public RedirectView deleteAccount(@ModelAttribute Account account,HttpServletRequest request) {
		
		System.out.println(account);
		
		int aid = account.getAccountid();
		
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/all_customers_details");
		
		int response = JOptionPane.showConfirmDialog(null, "Do you want to continue?", "Confirmation",
				JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
		if (response == JOptionPane.YES_OPTION) {
			this.accountDAO.deleteAccount(aid);
		}
		return redirectView;
	}
}
