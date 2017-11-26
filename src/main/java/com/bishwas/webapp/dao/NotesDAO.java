package com.bishwas.webapp.dao;

import java.sql.SQLException;
import java.util.List;

import com.bishwas.webapp.entity.Notes;

public interface NotesDAO {

	int insert(Notes notes) throws ClassNotFoundException, SQLException; 
	
	List<Notes> getAll() throws ClassNotFoundException, SQLException;
	
	Notes getById(int id) throws ClassNotFoundException, SQLException;

	int update(Notes notes) throws ClassNotFoundException, SQLException;

	int delete(int id) throws SQLException, ClassNotFoundException;
}
