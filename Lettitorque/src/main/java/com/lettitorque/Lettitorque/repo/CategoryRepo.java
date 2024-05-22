package com.lettitorque.Lettitorque.repo;

import com.lettitorque.Lettitorque.model.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface CategoryRepo extends JpaRepository<Category, Integer> {
    public Optional<Category> findByName(String name);
}
