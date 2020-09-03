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
import com.crude_dao.CustomerDAO;
import com.pojo.Customer;

@Controller
public class CustomerPageController {

	@Autowired
	private CustomerDAO customerDAO;
	
	private Object customer;

	// Show add customer form
	@RequestMapping("/add-customer")
	public String addCustomer(Model m) {

		m.addAttribute("title", "Add Customer");
		return "Create_Customer";
	}

	// Show add customer form on Delete view page
	@RequestMapping("/delete-customer")
	public String deleteShowCustomer(Model m) {

		List<Customer> customers = customerDAO.getCustomers();
		m.addAttribute("customers", customers);
		return "Delete_customer";
	}

	// Show update customer form
	@RequestMapping("/update-customer")
	public String updateCustomer(Model m) {

		m.addAttribute("title", "Update Customer");
		return "update_customer";
	}

	@RequestMapping("/all_customers_details")
	public String allCustomers(Model m) {

		List<Customer> customers = customerDAO.getCustomers();
		m.addAttribute("customers", customers);
		return "Show_All_Customers";
	}

	@RequestMapping("/customers_status")
	public String allCustomersStatus(Model m) {

		List<Customer> customers = customerDAO.getCustomers();
		m.addAttribute("customers", customers);
		return "customers_status";
	}

	// Handle add customer form
	@RequestMapping(value = "/Customer-CreateHandle", method = RequestMethod.POST)
	public RedirectView handleCustomer(@ModelAttribute Customer customer, HttpServletRequest request) {

		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		Date datenow = new Date();
		String s = dateFormat.format(datenow);
		customer.setDate(s);
		
		String m1="Customer Created Successfully";
		String m2="Customer Updatation Complete";
		
		int cust=customer.getCustomerid();
		
		
		if(cust==0) {
			customer.setMessage(m1);
		}else {
			customer.setMessage(m2);
		}

		System.out.println(customer);
		customerDAO.createCustomer(customer);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/all_customers_details");
		return redirectView;
	}

	// Delete handler
	@RequestMapping("/delete/{customerId}")
	public RedirectView deleteCustomer(@PathVariable("customerId") int customerId, HttpServletRequest request) {

		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/delete-customer");

		int response = JOptionPane.showConfirmDialog(null, "Do you want to continue?", "Confirmation",
				JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
		if (response == JOptionPane.YES_OPTION) {
			this.customerDAO.deleteCustomer(customerId);
		}

		return redirectView;

	}

	// Update handler
	@RequestMapping("update/{customerId}")
	public String updateForm(@PathVariable("customerId") int cid, Model model) {

		Customer customer = this.customerDAO.getCustomer(cid);
		model.addAttribute("customer", customer);
		return "update_customer";
	}

	// view Single Customer handler for customer status
	@RequestMapping(value = "/viewSingleCustomer/{customerId}",method = RequestMethod.GET)
	public String viewSingleCustomer(@PathVariable("customerId") int cid, Model model) {

		Customer customer = this.customerDAO.getCustomer(cid);
		model.addAttribute("customer", customer);
		return "view_single_customer";
	}

}
