package com.lettitorque.Lettitorque.controller;

import com.lettitorque.Lettitorque.model.Admin;
import com.lettitorque.Lettitorque.model.Customer;
import com.lettitorque.Lettitorque.model.User;
import com.lettitorque.Lettitorque.service.JwtService;
import com.lettitorque.Lettitorque.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class UserController {

	@Autowired
	private UserService service;

	@Autowired
	private JwtService jwtService;

	@Autowired
	AuthenticationManager authenticationManager;
	
	@PostMapping("RegisterCustomer")
	public String register(@RequestBody Customer customer) {
		customer.setAdmin(false);
		User user = customer;

		return service
				.saveUser(user) ? "The user has been saved " +
				"successfully." : "The user has not been saved.";
	}

	@PostMapping("RegisterAdmin")
	public String register(@RequestBody Admin admin) {
		admin.setAdmin(true);
		User user = admin;

		return service
				.saveUser(user) ? "The user has been saved " +
				"successfully." : "The user has not been saved.";
	}

	@PostMapping("/LoginPage")
	public String login(@RequestBody User user){

		Authentication authentication = authenticationManager
				.authenticate(new UsernamePasswordAuthenticationToken(user.getUsername(), user.getPassword()));

		if(authentication.isAuthenticated())
			return jwtService.generateToken(user.getUsername());
		else
			return "Login Failed";
	}
}
