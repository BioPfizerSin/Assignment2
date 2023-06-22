package com.wdf.module.SpringBootGrocer.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wdf.module.SpringBootGrocer.entity.Store;
import com.wdf.module.SpringBootGrocer.repository.StoreRepository;

@Service
@Transactional
public class StoreService {

	@Autowired
	private StoreRepository repo;

	// Get all stores info.
	public List<Store> getAllStores() {
		return repo.findAll();
	}

	// Save new store
	public void saveStore(Store store) {
		repo.save(store);
	}

	// Get store information by id
	public Store getStore(Integer id) {
		Store store = repo.findById(id).get();
		return store;
	}

	// Delete by using store id
	public void deleteStore(Integer id) {
		repo.deleteById(id);
	}

	// Update store information by id
	public Store updateStore(Integer id, Store newStore) {
		Store oldStore = repo.findById(id).get();

		oldStore.setName(newStore.getName());
		oldStore.setDes(newStore.getDes());
		oldStore.setPhone(newStore.getPhone());
		oldStore.setLocation(newStore.getLocation());
		oldStore.setImg(newStore.getImg());
		

		Store latestStore = repo.save(newStore); // Save the updated info

		return latestStore;
	}

	public List<Store> search(String keyword) {
		return repo.search(keyword);
	}

}
