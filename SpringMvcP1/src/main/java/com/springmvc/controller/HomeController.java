package com.springmvc.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/Controller")
public class HomeController {
	@RequestMapping("/index")
	public String index() {
		return "index";
	}

	@RequestMapping("/")
	public String index2() {
		return "index";
	}

	@RequestMapping("/home")
	public String home(Model model) {
		model.addAttribute("name", "Ayush");
		model.addAttribute("Id", 101);
		List<String> friends = new ArrayList<String>();
		friends.add("xyz");
		friends.add("abc");
		model.addAttribute("frnd", friends);
		return "home";
	}

	@RequestMapping("/about")
	public String about() {
		return "about";
	}

	@RequestMapping("/model-and-view")
	public ModelAndView modelView() {
		// Creating model
		ModelAndView model = new ModelAndView();
		Date date = new Date();
		List<Integer> list = new ArrayList<Integer>();
		list.add(99);
		list.add(87);
		list.add(75);

		// Setting data
		model.addObject("name", "Ayush");
		model.addObject("rollNum", 101);
		model.addObject("marks", list);
		model.addObject("date", date);

		// Setting view page
		model.setViewName("model-and-view");

		return model;
	}

}
