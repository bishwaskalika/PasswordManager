package com.bishwas.webapp.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.bishwas.webapp.dao.PasswordDAO;
import com.bishwas.webapp.entity.Password;



@Repository(value = "passwordDAO")
public class PasswordDAOImpl implements PasswordDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public int insert(Password pwd) throws ClassNotFoundException, SQLException {

		String sql = "INSERT INTO password(title,email,username,password) VALUES(?,?,?,?)";
		return jdbcTemplate.update(sql,
				new Object[] { pwd.getTitle(), pwd.getEmail(), pwd.getUserName(), pwd.getPassword() });

	}

	public List<Password> getAll() throws ClassNotFoundException, SQLException {

		String sql = "SELECT * FROM password";
		return jdbcTemplate.query(sql, new RowMapper<Password>() {

			public Password mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				Password pwd = new Password();
				pwd.setId(rs.getInt("id"));
				pwd.setTitle(rs.getString("title"));
				pwd.setEmail(rs.getString("email"));
				pwd.setUserName(rs.getString("username"));
				pwd.setPassword(rs.getString("password"));
				return pwd;
				
			}

		});

	}

	public Password getById(int id) throws ClassNotFoundException, SQLException {
		String sql ="SELECT * FROM password where id=?";
		return jdbcTemplate.queryForObject(sql, new Object[]{id}, new RowMapper<Password>() {

			public Password mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				Password pwd = new Password();
				pwd.setId(rs.getInt("id"));
				pwd.setTitle(rs.getString("title"));
				pwd.setEmail(rs.getString("email"));
				pwd.setUserName(rs.getString("username"));
				pwd.setPassword(rs.getString("password"));
				return pwd;
				
			}

		});
	}

	 
	    public int update(Password pwd) throws ClassNotFoundException, SQLException {
	        String sql="UPDATE  password set title=?,email=?,username=?,password=?, WHERE id=?";      
	       return jdbcTemplate.update(sql,
					new Object[] { pwd.getTitle(), pwd.getEmail(), pwd.getUserName(), pwd.getPassword(),pwd.getId() });
	    }

	   
	    public int delete(int id) throws ClassNotFoundException, SQLException {
	        String sql="DELETE FROM  password  WHERE id=?";      
	         return jdbcTemplate.update(sql, id);
	    }
}
