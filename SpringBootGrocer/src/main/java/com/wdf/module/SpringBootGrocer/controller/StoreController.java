package com.wdf.module.SpringBootGrocer.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wdf.module.SpringBootGrocer.entity.Store;
import com.wdf.module.SpringBootGrocer.service.StoreService;

@Controller
public class StoreController {
	@Autowired
	private StoreService service;

	@GetMapping("/")
	public String getHomePage() {
		return "index";
	}
	
	@GetMapping("/stores")
	public String getStoresPage(Model model) {
		
		//Get the store list from service 
		java.util.List<Store> stores = service.getAllStores();
		
		//Passes the store list to JSP
		model.addAttribute("stores", stores);
		
		//Go to stores JSP
		return "stores";
	}
	
	@GetMapping("/new-store")
	public String newStorePage() {
		return "new-store";
	}
	
	@PostMapping("/add-store")
	public String addNewStore(@ModelAttribute("store") Store store) {
		
		//Call service with store data
		service.saveStore(store);
		
		return "redirect:stores";
	}
	
	@GetMapping("/edit-store")
	public String getEditStorePage(Model model, @RequestParam("id") Integer id) {
		Store store = service.getStore(id);
		model.addAttribute("store", store);
		return "edit-store";
	}
	
	@PostMapping("/update-store")
	public String updateStore(@ModelAttribute("store") Store store) {
		service.updateStore(store.getId(), store);
		return "redirect:/stores";	
	}
	
	@GetMapping("/delete-store")
	public String deleteStore(@RequestParam("id") Integer id) {
		service.deleteStore(id);
		return "redirect:/stores";
	}
	
	@GetMapping("/search")
	public String searchPage(Model model, String keyword) {
		
		System.out.println("In search");
		
		List<Store> stores = service.search(keyword);
		model.addAttribute("stores", stores);
		return "search";

	}
	
}
