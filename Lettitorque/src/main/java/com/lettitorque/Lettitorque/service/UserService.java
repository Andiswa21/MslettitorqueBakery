package com.lettitorque.Lettitorque.service;

import com.lettitorque.Lettitorque.model.Admin;
import com.lettitorque.Lettitorque.model.Customer;
import com.lettitorque.Lettitorque.model.User;
import com.lettitorque.Lettitorque.repo.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserService {
    @Autowired
    private UserRepo repo;

    private BCryptPasswordEncoder encoder=new BCryptPasswordEncoder(12);

    public boolean saveUser(User user) {
        boolean isSaved = false;
        Optional<User> userTest =
                repo.findByUsername(user.getUsername());

        if(userTest.isPresent() != true) {
            user.setPassword(encoder.encode(user.getPassword()));

            repo.save(user);

            isSaved = true;
        }

        return isSaved;
    }

    public Optional<User> searchUserByUsername(String username) {

        return repo.findByUsername(username);
    }

    public boolean deleteUser(User user) {
        boolean isDeleted = false;
        Optional<User> userTest = repo.findByUsername(user.getUsername());

        if(userTest.isPresent()) {
            repo.delete(userTest.get());
            isDeleted = true;
        }

        return isDeleted;
    }

}
