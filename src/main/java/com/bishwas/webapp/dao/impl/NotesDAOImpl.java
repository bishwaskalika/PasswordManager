package com.bishwas.webapp.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bishwas.webapp.dao.NotesDAO;
import com.bishwas.webapp.entity.Notes;
import com.bishwas.webapp.entity.Password;

@Repository(value="notesDAO")
public class NotesDAOImpl implements  NotesDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public int insert(Notes notes) throws ClassNotFoundException, SQLException {
		
		String sql = "INSERT INTO note(title,details) VALUES(?,?)";
		return jdbcTemplate.update(sql, new Object[]{notes.getTitle(),notes.getDetails()});
	}

	public List<Notes> getAll() throws ClassNotFoundException, SQLException {
		String sql = "SELECT * FROM  note";
		return jdbcTemplate.query(sql, new RowMapper<Notes>() {

			public Notes mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				Notes notes = new Notes();
				notes.setId(rs.getInt("id"));
				notes.setTitle(rs.getString("title"));
				notes.setDetails(rs.getString("details"));
				return notes;
				
			}

		});

}

	public Notes getById(int id) throws ClassNotFoundException, SQLException {
		String sql = "SELECT * FROM note where id=?";
		return jdbcTemplate.queryForObject(sql, new Object[]{id}, new RowMapper<Notes>() {

			public Notes mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				Notes notes = new Notes();
				notes.setId(rs.getInt("id"));
				notes.setTitle(rs.getString("title"));
				notes.setDetails(rs.getString("details"));
				return notes;
				
			}

		});
	}

	public int update(Notes notes) throws ClassNotFoundException, SQLException {
		String sql = "UPDATE  note set title=?, details=? WHERE id=? ";
		return jdbcTemplate.update(sql, new Object[]{notes.getTitle(),notes.getDetails(),notes.getId()});
		
	}

	public int delete(int id) throws ClassNotFoundException, SQLException {
        String sql="DELETE FROM  note  WHERE id=?";      
         return jdbcTemplate.update(sql, id);
    }

	

	
}
