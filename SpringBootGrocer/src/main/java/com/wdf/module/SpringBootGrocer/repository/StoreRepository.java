package com.wdf.module.SpringBootGrocer.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.wdf.module.SpringBootGrocer.entity.Store;

public interface StoreRepository extends JpaRepository<Store, Integer>{
	@Query("SELECT s FROM Store s WHERE s.name = ?1")
	public Store findStoreByName(String store_name);
	
	@Query(value = "SELECT s FROM Store s WHERE s.name LIKE '%' || :keyword || '%'"
			+ " OR s.phone LIKE '%' || :keyword || '%'"
			+ " OR s.location LIKE '%' || :keyword || '%'")
	public List<Store> search(@Param("keyword") String keyword);

}
