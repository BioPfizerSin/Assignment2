package com.wdf.module.SpringBootGrocer.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.wdf.module.SpringBootGrocer.entity.Role;
@Repository
public interface RoleRepository extends JpaRepository<Role, Integer>{

}
