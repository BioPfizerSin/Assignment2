package com.wdf.module.SpringBootGrocer;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.*;

import java.util.Optional;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.annotation.Rollback;

import com.wdf.module.SpringBootGrocer.entity.User;
import com.wdf.module.SpringBootGrocer.repository.RoleRepository;
import com.wdf.module.SpringBootGrocer.repository.UserRepository;

@DataJpaTest
@AutoConfigureTestDatabase(replace = Replace.NONE)
@Rollback(false)
class UserRepositoryTest {
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private RoleRepository roleRepository;

	@Test
	void testCreateAdmin() {
		
		//Create user object
		User admin = new User();
		admin.setEmail("adm@example.com");
		admin.setUsername("admin");
		admin.setPassword("password");
		
		//Save user into DB
		User savedAdmin = userRepository.save(admin);
		
		//Retrieve user from DB
		User existedAdmin = userRepository.findUserByEmail("adm@example.com");
		//User existUser = entityManager.find(User.class, savedAdmin.getId());
		
		//Test and validate
		assertThat(existedAdmin.getUsername()).isEqualTo(savedAdmin.getUsername());
	}
	
	@Test
	public void testAssignRoleToAdmin() {
		User admin = userRepository.findUserByUsername("admin");
		
		//Assign role (view and add) to user
//		admin.addRoles(roleRepository.findUserByUsername(admin));
//		admin.addRoles(roleRepository.findUserByEmail(existe);
		
		//Test and validate
//		assertThat(admin.getRoles().size()).isEqualTo(2);
	}

}
