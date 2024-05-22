package com.lettitorque.Lettitorque.controller;

import com.lettitorque.Lettitorque.model.Category;
import com.lettitorque.Lettitorque.model.Product;
import com.lettitorque.Lettitorque.repo.ConfirmedOrderDetailsRepo;
import com.lettitorque.Lettitorque.service.CategoryService;
import com.lettitorque.Lettitorque.service.ProductService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import java.util.List;
import java.io.File;
import java.io.IOException;
import java.util.Optional;

@Controller
public class ProductController implements ErrorController {
    @Autowired
    private ProductService productService;
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private CategoryController categoryController;

    @GetMapping("GetAddProductPage")
    private String getAddProductPage(HttpSession session) {
        List<Category> cat = categoryService.allCategories();
        session.setAttribute("cat", cat);
        return "add_product";
    }

    @PostMapping("AddProduct")
    public String addProduct(@RequestParam("name") String name,
                             @RequestParam("quantity") Double quantity,
                             @RequestParam("price") Double price,
                             @RequestParam("description") String description,
                             @RequestParam("image") MultipartFile image,
                             @RequestParam("id") Integer id) throws IOException {

        Optional<Category> category = categoryService.getCategoryById(id);

        String msg;
        if (!name.isBlank() && quantity != null && price != null) {
            Product product = new Product();
            product.setName(name);
            product.setDescription(description);
            product.setPrice(price);
            product.setQuantity(quantity);

            if (category.isPresent()) {
                product.setCategory(category.get());
            }

            if (!image.isEmpty()) {
                byte[] pic = image.getBytes();
                product.setProdImage(pic);
            }
            productService.addProduct(product);

            msg = "Product with details Name: " + name + ", Price R " + price +
                    " and Quantity " + quantity + "g / kg has been added successfully!";
        } else {
            msg = "Make sure to add product name, price, and quantity.";
        }

        return "success";
    }

    @GetMapping("GetAllProducts")
    public String getAllProducts(HttpSession session) {
        List<Product> allProducts = productService.allProducts();
        session.setAttribute("allProducts", allProducts);
        return "products_list";
    }

    @GetMapping("GetProductsByCategory")
    public String getAllByCategory(HttpSession session) {
        List<Category> cat = categoryService.allCategories();
        session.setAttribute("cat", cat);
        return "prod_by_cat";
    }


    @PostMapping("SubmitSearchKey")
    public String submitSearchKey(@RequestParam("searchValue") String searchValue,
                                  @RequestParam("id") Integer categoryId, HttpSession session) {

        Optional<Category> category = categoryService.getCategoryById(categoryId);

        if (category.isPresent()) {
            Optional<Product> product = productService.getProductByNameAndCategory(searchValue, category.get());
            if (product.isPresent()) {
                session.setAttribute("matchingProduct", product.get());
                return "found_product";
            }
        }
        session.setAttribute("msg", "Product not found");
        return "found_product";
    }


    @GetMapping("GetProductsBy")
    public String updateByNameNCat(HttpSession session) {
     List<Category> categories = categoryService.allCategories();
     session.setAttribute("categories", categories);
        return "pUpdate";
    }

    @PostMapping("Update")
    public String doUpdate(@RequestParam("searchValue") String searchValue,
                           @RequestParam("categoryId") Integer categoryId,
                           HttpSession session) {

        Optional<Category> category = categoryService.getCategoryById(categoryId);
        if (category.isPresent()) {
            Optional<Product> product = productService.getProductByNameAndCategory(searchValue, category.get());
            if (product.isPresent()) {
                Product pror = product.get();

                if (searchValue.equals(pror.getName())) {
                    session.setAttribute("pror", pror);
                    return "update_prod_conf";
                }
            }
        }
        session.setAttribute("msg", "Product NOT Found");
        return "success";
    }


    @PostMapping("MakeChanges")
    public String change(@RequestParam("productId") Long productId,
                         @RequestParam("newName") String newName,
                         @RequestParam("newQuantity") Double newQuantity,
                         @RequestParam("newPrice") Double newPrice,
                         @RequestParam("newDescription") String newDescription,
                         @RequestParam("newImage") MultipartFile newImage,
                         @RequestParam("newId") Integer newId) throws IOException {
        Optional<Product> productOptional = productService.getProductById(productId);
        String msg;
        if (productOptional.isPresent()) {
            Product product = productOptional.get();
            Optional<Category> categoryOptional = categoryService.getCategoryById(newId);
            product.setName(newName);
            product.setPrice(newPrice);
            product.setQuantity(newQuantity);
            product.setDescription(newDescription);
            categoryOptional.ifPresent(product::setCategory);

            if (!newImage.isEmpty()) {
                byte[] pic = newImage.getBytes();
                product.setProdImage(pic);
            }
            productService.saveProduct(product);
            msg = "Updated";
        } else {
            msg = "NOT Updated";
        }

        return "success";
    }

    @GetMapping("GetNewDetailsPage")
    public String getNewDetailsPage(HttpSession session, @RequestParam("productId") Long productId) {
Optional<Product> product = productService.getProductById(productId);
List<Category> cates = categoryService.allCategories();
if(product.isPresent()){
    session.setAttribute("product", product);
}
session.setAttribute("cates",cates);
        return "prod_updateDetails";
    }

    @GetMapping("DeleteProduct")
    public String deleteProduct(HttpSession session){
        List<Product> products = productService.allProducts();
        session.setAttribute("products",products);
        return "delete_prod";
    }

    @PostMapping("DeleteProd")
    public String deleteProd(@RequestParam("name") String name,
                             @RequestParam("categoryName") String categoryName,
                             HttpSession session){
        Optional<Category> category = categoryService.getCategoryByName(categoryName);
        if(category.isPresent()){
            productService.deleteProductByName(name,category.get());
            session.setAttribute("msg", "Deleted");
        }  else{
            session.setAttribute("msg", "Not Deleted");
        }
        return "success";
    }
    @GetMapping("OnlyCategory")
    public String getProductsByCategory(HttpSession session){
        List<Category> cat = categoryService.allCategories();
        session.setAttribute("cat", cat);
        return "byCategoryOnly";
    }

    @PostMapping("SomeProducts")
    public String  someProducts(@RequestParam("id") Integer id,
                                HttpSession session){
        Optional<Category> cat = categoryService.getCategoryById(id);
        if(cat.isPresent()){
            List<Product> allProducts= productService.getProductsByCategoryName(cat.get().getName());
            session.setAttribute("allProducts", allProducts);
        }
        return "products_list";
    }
    @RequestMapping("/error")
    public ResponseEntity<String> handleError(HttpServletRequest request) {
        Integer statusCode = (Integer) request.getAttribute("javax.servlet.error.status_code");
        Exception exception = (Exception) request.getAttribute("javax.servlet.error.exception");

        if (statusCode == 404) {
            return ResponseEntity.status(404).body("Page not found");
        } else if (statusCode == 500) {
            return ResponseEntity.status(500).body("Internal server error");
        } else {
            return ResponseEntity.status(statusCode).body("An error occurred");
        }
    }
}


