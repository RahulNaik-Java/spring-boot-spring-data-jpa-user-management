package com.rahul.naik.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.rahul.naik.entity.User;
import com.rahul.naik.repository.UserRepository;

@Controller
public class UserController {
	
	@Autowired
	UserRepository userRepository;
	
	@GetMapping("/users")
	public String home(Model model) {
		List<User> usersList = userRepository.findAll();
		model.addAttribute("users", usersList);
		return "users";
	}

}
