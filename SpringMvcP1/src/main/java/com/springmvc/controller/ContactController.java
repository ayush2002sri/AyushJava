package com.springmvc.controller;
import com.springmvc.Dao.*;
import com.springmvc.Service.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.springmvc.entity.User;

@Controller
public class ContactController {
	@Autowired
	ContactService contactService;
	@RequestMapping("/contactForm")
	public String viewForm(Model m) {
		/*
		 * m.addAttribute("Message", "THIS IS SPRING MVC DEMO PROJECT");
		 */		return "contactForm";
	}
	@ModelAttribute
	public void commonData(Model model) {
		model.addAttribute("Message", "THIS IS SPRING MVC DEMO PROJECT");
	}

	/*
	 * OLD METHOD
	 * 
	 * @RequestMapping(path = "/formData", method = RequestMethod.POST) public
	 * String processForm(
	 * 
	 * @RequestParam("email") String userEmail,
	 * 
	 * @RequestParam("name") String userName,
	 * 
	 * @RequestParam("contact") String userContact, Model model) { int
	 * contact=Integer.parseInt(userContact); User user =new User();
	 * user.setContact(contact); user.setEmail(userEmail); user.setName(userName);
	 * System.out.println(user);
	 * 
	 * model.addAttribute("email", userEmail); model.addAttribute("name", userName);
	 * model.addAttribute("contact", userContact);
	 * 
	 * model.addAttribute("user",user); return "success"; }
	 */
	
	@RequestMapping(path = "/formData", method = RequestMethod.POST)
	public String processForm(@ModelAttribute("user") Contact user, Model model) {
		System.out.println(user);
		contactService.addContact(user);
		/* model.addAttribute("Message", "THIS IS SPRING MVC DEMO PROJECT"); */
		return "success";
	}
}
