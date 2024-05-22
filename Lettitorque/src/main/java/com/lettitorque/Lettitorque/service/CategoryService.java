package com.lettitorque.Lettitorque.service;

import com.lettitorque.Lettitorque.model.Category;
import com.lettitorque.Lettitorque.repo.CategoryRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CategoryService {
    @Autowired
    private CategoryRepo  cateRepo;

    public boolean addCategory(Category category) {
        cateRepo.save(category);
        return true;
    }

    public Optional<Category> getCategoryByName(String name) {
        return cateRepo.findByName(name);

    }

    public boolean deleteCategoryByName(String name) {
        boolean isDeleted = false;
        Optional<Category> cateTest = cateRepo.findByName(name);

        if(cateTest.isPresent()) {
            cateRepo.delete(cateTest.get());
            isDeleted = true;
        }

        return isDeleted;
    }

    public boolean updateCategoryDescByName(String name, String desc) {
        boolean isUpdated = false;
        Optional<Category> cateTest = cateRepo.findByName(name);

        if(cateTest.isPresent()) {
            cateTest.get().setDescription(desc);
            Category cat = cateTest.get();
            cateRepo.save(cat);
            isUpdated = true;
        }

        return isUpdated;
    }
    public void updateCaategoryDetails(String name,String newName ,String description) {
        Optional<Category> category = cateRepo.findByName(name);
        if (category.isPresent()) {
            Category cat = category.get();
             cat.setDescription(description);
             cat.setName(newName);
              cateRepo.save(cat);
        }
    }
    public boolean updateCategoryNameByName(String name, String newName) {
        boolean isUpdated = false;
        Optional<Category> cateTest = cateRepo.findByName(name);

        if(cateTest.isPresent()) {
            cateTest.get().setDescription(newName);
            Category cat = cateTest.get();
            cateRepo.save(cat);
            isUpdated = true;
        }

        return isUpdated;
    }

    public List<Category> allCategories(){
        return cateRepo.findAll();
    }
    public Optional<Category> getCategoryById(Integer id) {
        return cateRepo.findById(id);}
}
