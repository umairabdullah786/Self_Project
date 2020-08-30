package com.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class AllAController {
	
	@RequestMapping("/")
	public String home() {
		
		return "index";
	}
 

}
