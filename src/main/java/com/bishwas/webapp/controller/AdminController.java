package com.bishwas.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
@RequestMapping(value="/admin")
public class AdminController {
	
	@RequestMapping(value="/welcome",method= RequestMethod.GET)
	public String index(Model model){
		model.addAttribute("name", "This Admin index page");
		return "admin/welcome";
	}
	
	
	
	
}
