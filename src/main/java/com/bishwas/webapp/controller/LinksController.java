package com.bishwas.webapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/admin/links")
public class LinksController {
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(Model model){
		model.addAttribute("name", "This Admin index page");
		return "admin/links/index"; 
	}

}
