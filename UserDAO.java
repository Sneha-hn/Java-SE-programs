package com.niit.jewellarycartbackend.dao;

	import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.jewellarycartbackend.domain.User;

@Repository
	public interface UserDAO {
	public List<User> list();

	
	public boolean save(User user );

	
	public boolean update(User user);

	
	public boolean delete(String id);

	
	public boolean delete(User user);

	
	public User getUserByID(String id);

	
	public User getUserByName(String name);
}
