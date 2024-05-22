package com.lettitorque.Lettitorque.service;

import com.lettitorque.Lettitorque.model.Category;
import com.lettitorque.Lettitorque.model.Product;
import com.lettitorque.Lettitorque.repo.ProductRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class ProductService {

    @Autowired
    private ProductRepo prodRepo;

    @Transactional
    public boolean addProduct(Product product) {
        return prodRepo.save(product) != null;
    }

    @Transactional
    public void deleteProductByName(String name, Category category) {
        prodRepo.deleteProductByNameAndCategory(name, category);
    }
    public Optional<Product> getProductByNameAndCategory(String prodName, Category category) {
        return prodRepo.getByNameAndCategory(prodName, category);
    }

    @Transactional(readOnly = true)
    public List<Product> getProductsByCategoryName(String categoryName) {
        return prodRepo.findByCategoryName(categoryName);
    }

    @Transactional
    public boolean updateProductImageByNameAndCategory(String name, Category category, byte[] prodImage) {
        boolean isUpdated = false;
        Optional<List<Product>> prodsTest = prodRepo.findByName(name);

        if(prodsTest.isPresent()) {
            prodRepo.updateImageByNameAndCategory(name, category, prodImage);
           
            return true;

        } else {
            return false;
        }
    }

    @Transactional
    public boolean updateProductDescriptionByNameAndCategory(String name, Category category, String description) {
        boolean isUpdated = false;
        Optional<List<Product>> prodsTest = prodRepo.findByName(name);

        if(prodsTest.isPresent()) {
            prodRepo.updateDescriptionByNameAndCategory(name, category, description);
            return true;
        } else {
            return false;
        }
    }
    public List<Product> allProducts(){
        return prodRepo.findAll();
    }
    public Optional<Product> getProductById( Long id) {
        return  prodRepo.findById(id);}

    public boolean saveProduct(Product product) {
        prodRepo.save(product);
        return true;
    }
}
