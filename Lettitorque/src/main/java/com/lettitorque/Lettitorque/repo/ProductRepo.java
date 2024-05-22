package com.lettitorque.Lettitorque.repo;

import com.lettitorque.Lettitorque.model.Category;
import com.lettitorque.Lettitorque.model.Product;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ProductRepo extends JpaRepository<Product, Long> {
    public Optional<List<Product>> findByName(String name);
    Optional<Product> getByNameAndCategory(String name, Category category);
    @Modifying
    @Transactional
    @Query("DELETE FROM Product p WHERE p.name = :name AND p.category = :category")
    void deleteProductByNameAndCategory(String name, Category category);
    @Modifying
    @Transactional
    @Query("SELECT p FROM Product p WHERE p.name = :prodName AND p.category = :category")
    Optional<Product> getByNameAandCategory(String prodName, Category category);
    @Modifying
    @Transactional
    @Query("UPDATE Product p SET p.prodImage = :prodImage WHERE p.name = :name AND p.category = :category")
    void updateImageByNameAndCategory(String name, Category category, byte[] prodImage);
    @Modifying
    @Transactional
    @Query("UPDATE Product p SET p.description = :description WHERE p.name = :name AND p.category = :category")
    void updateDescriptionByNameAndCategory(String name, Category category, String description);
    @Transactional
    @Query("SELECT p FROM Product p WHERE p.category.name = :categoryName")
    List<Product> findByCategoryName(@Param("categoryName") String categoryName);
}
