package com.example.demo;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WebsiteController {
	@Autowired
	Blogrepo repo;
	
	@RequestMapping("/")
	public String openHome() {
		return "home";
	}
	@RequestMapping("/blog")
	public String openBlog() {
		return "blog";
	}
		
	@PostMapping("/showblogs")
	public String showblogs() {
		return "showblogs";	
					}
		
	@PostMapping("/add")
	public String addBlog() {
		return "addblog";
	}
	
	@PostMapping("/delete")
	public String deleteBlog() {
		return "deleteblog";
	}
	
	@PostMapping("/added")
	public String added(@RequestParam String btitle, @RequestParam String bdesc) {
		Blogs b = new Blogs();
		b.setBtitle(btitle);
		b.setBdesc(bdesc);
		repo.save(b);
		return "showblogs";
	}
	
	
	@PostMapping("/deleted")
	public String deleted(@RequestParam int bno) {
			repo.deleteById(bno);
		return "deleteblog";
	}
	
	@RequestMapping("/update")
	public String updateBlog() {
		return "updateblog";
	}
	

}