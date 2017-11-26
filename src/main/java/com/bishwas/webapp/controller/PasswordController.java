package com.bishwas.webapp.controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bishwas.webapp.dao.PasswordDAO;
import com.bishwas.webapp.entity.Password;



@Controller
@RequestMapping(value="/admin/password")
public class PasswordController {

	@Autowired
	private PasswordDAO passwordDAO;
	
	@RequestMapping( method = RequestMethod.GET)
	public String index(Model model){
		try{
		//Password psd = new Password(2, "bishwas", "bishwas.kalika@gmail.com", "bishwas", "bishwas123"); 
		//int result = passwordDAO.insert(psd);
		model.addAttribute("password", passwordDAO.getAll());
		}catch(Exception ex){
		
		}
		
		return "admin/password/index"; 
	}
	
	@RequestMapping(value = "/edit/{id}",method = RequestMethod.GET)
	public String edit(Model model, @PathVariable("id") int id){
		try{
			model.addAttribute("pwd", passwordDAO.getById(id));
		}catch(Exception ex){
			
		}
		return "admin/password/edit";
	}
	
	@RequestMapping(value = "/add",method = RequestMethod.GET)
	public String add(Model model){
		return "admin/password/add";
	}
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String save (Password pwd){
		try{
			if(pwd.getId()==0){
				passwordDAO.insert(pwd);
			}else{
				passwordDAO.update(pwd);
			}
			
		}catch(Exception ex){
			
		}
		
		return "redirect:/admin/password";
	}
	
	   
	 @RequestMapping(value = "/delete/{id}",method = RequestMethod.GET)
	   public String delete(@PathVariable("id")int id) throws ClassNotFoundException, SQLException{
	      passwordDAO.delete(id);
	       return "redirect:/admin/password";
	   }
	   
}
