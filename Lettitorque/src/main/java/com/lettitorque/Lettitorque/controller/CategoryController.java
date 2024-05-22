package com.lettitorque.Lettitorque.controller;

import com.lettitorque.Lettitorque.model.Category;
import com.lettitorque.Lettitorque.service.CategoryService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
public class CategoryController {
    @Autowired
    private CategoryService cateService;

    @GetMapping("AddCategoryPage")
    private String getAddCatePage() {
        return "add_category";
    }

    @PostMapping("SubmitCategory")
    public String submitCategory(@RequestParam("name") String name,
                                  @RequestParam("description")String description, HttpSession session) {
        Category category = new Category();
        category.setName(name);
        category.setDescription(description);
        cateService.addCategory(category);
        if(cateService.addCategory(category)) {
            session.setAttribute("msg", "A category has been added.");
        } else {
            session.setAttribute("msg", "A category has not been added.");
        }

        return "success";
    }

    @GetMapping("GetAllCategoriesPage")
    public String getAllCategories(HttpSession session){
    List<Category> cat = cateService.allCategories();
    session.setAttribute("cat", cat);
     return "categories";
    }

    @GetMapping("SearchCategoryPage")
    private String getSearchCategoryPage() {
        return "search_cat";
    }

    @PostMapping("SubmitSearch") // finds products  by either name or id
    public String searchCategory(@RequestParam(name = "name") String name,
                                 HttpSession session) {
        Category category = null;
        if (name.chars().allMatch(Character::isDigit)){
            Integer id = Integer.parseInt(name);
            Optional<Category> categori = cateService.getCategoryById(id);
            category = categori.get();

        } else{
       Optional<Category> categori = cateService.getCategoryByName(name);
       if (categori.isPresent()){
           category = categori.get();
       }
        }
        session.setAttribute("category", category);
        return "catSearch_result";
    }
    @GetMapping("GetUpdatePage")
    public String getUpdatePage(){
      return "update_input";
    }
    @PostMapping("UpdateCategory")
    public String updateCategory(@RequestParam("id") Integer id,
                                 @RequestParam("name") String name,
                                 @RequestParam("description") String description,
                                 HttpSession session){
        String msg;

        if (name.isBlank() || description.isBlank()) {
            msg = "Update cannot be performed! Input all required fields";
            session.setAttribute("updateMsg", msg);
            return "update_input"; // Ensure update_input.html exists in src/main/resources/templates
        } else {
            Optional<Category> categori = cateService.getCategoryById(id);
            if (categori.isPresent()) {
                Category category = categori.get();
                cateService.updateCaategoryDetails(category.getName(), name, description);

                msg = "Update successful!";
            } else {
                msg = "Category not found!";
            }
            session.setAttribute("msg", msg);
            return "success"; // Ensure success.html exists in src/main/resources/templates
        }
    }

    @GetMapping("GetDeleteConfirmPage")
    public  String getConfirmDelete(HttpSession session){
        List<Category> cat = cateService.allCategories();
        session.setAttribute("cat", cat);
        return "confirm_del";
    }
    @PostMapping("DeleteCategory")
    public String deleteCategory(@RequestParam("name") String name, RedirectAttributes redirectAttributes) {
        Optional<Category> category = cateService.getCategoryByName(name);
        if (category.isPresent()) {
            cateService.deleteCategoryByName(category.get().getName());
            redirectAttributes.addFlashAttribute("msg", "Deleted successfully!");
        } else {
            redirectAttributes.addFlashAttribute("msg", "Delete NOT successful");
        }
        return "success";
    }

}
