package com.lettitorque.Lettitorque.service;

import com.lettitorque.Lettitorque.model.User;
import com.lettitorque.Lettitorque.model.UserPrincipal;
import com.lettitorque.Lettitorque.repo.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class MyUserDetailsService implements UserDetailsService {

	@Autowired
	private UserRepo repo;
	
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

	Optional<User> user= repo.findByUsername(username);
	
	if (user.isEmpty()) {
		System.out.println("User 404");
		throw new UsernameNotFoundException("User 404");
	}
		 return new UserPrincipal(user.get());
	}
}
