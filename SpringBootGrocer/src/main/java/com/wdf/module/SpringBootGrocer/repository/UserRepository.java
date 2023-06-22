package com.wdf.module.SpringBootGrocer.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.wdf.module.SpringBootGrocer.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer>{

	@Query("SELECT u FROM User u WHERE u.email = ?1")
	public User findUserByEmail(String email);
	
	@Query("SELECT u FROM User u WHERE u.username = ?1")
	public User findUserByUsername(String username);
	
	
}
