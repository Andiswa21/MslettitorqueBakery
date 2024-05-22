package com.lettitorque.Lettitorque.service;

import com.lettitorque.Lettitorque.model.Admin;
import com.lettitorque.Lettitorque.repo.AdminRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AdminService {
    @Autowired
    private AdminRepo repo;

    public Optional<Admin> getAdminByUsername(String username) {
        return repo.findByUsername(username);
    }

//    public List<Admin> searchAdminsByNameOrSurnameKeyword(String keyword) {
//        return repo
//                .findByNameContainingOrSurnameContaining(keyword, keyword);
//    }

    public Optional<Admin> getAdminById(Long id) {
        return repo.findById(Math.toIntExact(id));
    }

    public List<Admin> getAllAdmins() {
        return repo.findAll();
    }

    public Admin setAdmin(Admin admin) {
        return repo.save(admin);
    }

    public Admin setNewUsername(String username, String newUsername) {
        Optional<Admin> admin = repo.findByUsername(username);

        admin.get().setUsername(newUsername);

        return repo.save(admin.get());
    }

    public String removeAdmin(String username) {
        Optional<Admin> admin = repo.findByUsername(username);
        repo.deleteById(Math.toIntExact(admin.get().getId()));
        return "The admin has been removed";
    }

    public Admin addAmin(Admin admin) {
        return repo.save(admin);
    }
}
