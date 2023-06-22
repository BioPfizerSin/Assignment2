package com.wdf.module.SpringBootGrocer;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.annotation.Rollback;

import com.wdf.module.SpringBootGrocer.repository.RoleRepository;
import com.wdf.module.SpringBootGrocer.entity.Role;

@DataJpaTest
@AutoConfigureTestDatabase(replace = Replace.NONE)
@Rollback(true)
public class RoleRepositoryTest {
	
	@Autowired
	private RoleRepository roleRepository;

	@Test
	public void testCreateRole() {
		//Create the roles object
		Role viewStore = new Role("VIEW_STORE");
		Role addStore = new Role("ADD_STORE");
		
		//Save the roles object, then store into database
		roleRepository.save(viewStore);
		roleRepository.save(addStore);
		
		//Retrieve the role object
		List<Role> list = roleRepository.findAll();
		
		//Test and validate
		assertThat(list.size()).isEqualTo(2);
	}

}
