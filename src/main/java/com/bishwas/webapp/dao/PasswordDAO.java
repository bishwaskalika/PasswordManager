package com.bishwas.webapp.dao;

import java.sql.SQLException;
import java.util.List;

import com.bishwas.webapp.entity.Password;



public interface PasswordDAO {
	
	int insert(Password pwd) throws ClassNotFoundException, SQLException;
	
	List<Password> getAll() throws ClassNotFoundException, SQLException;
	
	Password getById(int id) throws ClassNotFoundException, SQLException;

	int update(Password pwd) throws ClassNotFoundException, SQLException;
	
	int delete(int id) throws SQLException, ClassNotFoundException;
}
