package com.bishwas.webapp.controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bishwas.webapp.dao.NotesDAO;
import com.bishwas.webapp.entity.Notes;

@Controller
@RequestMapping(value="/admin/notes")
public class NotesController {
	
	@Autowired
	private NotesDAO notesDAO;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(Model model){
		try{
		//Notes notes = new Notes (0,"name","name");
		//int result = notesDAO.insert(notes);
		model.addAttribute("notes", notesDAO.getAll());
		}catch(Exception ex){
			
		}
		
		return "admin/notes/index"; 
	}
	

	@RequestMapping(value="/edit/{id}", method= RequestMethod.GET)
	public String edit(Model model, @PathVariable("id") int id){
		
		try{
			model.addAttribute("notes", notesDAO.getById(id));
		}catch(Exception ex){
			
		}
		
		return "admin/notes/edit";
	}
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String add(Model model){
		return "admin/notes/add";
		
	}
	
	@RequestMapping(value="/save", method=RequestMethod.POST)
	public String save(Notes notes){
		try{
			if(notes.getId()==0){
				notesDAO.insert(notes);
			}else{
				notesDAO.update(notes);
			}
			
		}catch(Exception ex){
			
		}
		
		return "redirect:/admin/notes/";
	}
	
	@RequestMapping(value = "/delete/{id}",method = RequestMethod.GET)
	   public String delete(@PathVariable("id")int id) throws ClassNotFoundException, SQLException{
	      notesDAO.delete(id);
	       return "redirect:/admin/notes";
	   }

}
