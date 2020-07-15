package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FormController {
	
	@Autowired
	BlogRepo repo;
	@RequestMapping("/")
	public String display() {
		return "home";
		
	}	
	@RequestMapping("/display")
	public String display(Blogs blogs) {
		repo.save(blogs);
		return "blog";
		
	}
	@RequestMapping("/deleted")
	public String blogdelete(@RequestParam("bid") int bid) {
		repo.deleteById(bid);
		return "blog";
		
	}
	
/*	@PostMapping("/display")
	public String viewStudents(
			@RequestParam("id") String id,
			@RequestParam("title") String title,
			@RequestParam("description") String description,ModelMap m) {
	
		m.put("id", id);
		m.put("title", title);
		m.put("description", description);
		
		return "blog";
	}*/
}
