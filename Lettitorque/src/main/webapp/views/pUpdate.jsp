<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.lettitorque.Lettitorque.model.Category" %>
<%@ page import="com.lettitorque.Lettitorque.service.CategoryService" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h2 class="mt-5">Product Form</h2>
        <form action="Update" method="post" enctype="multipart/form-data" class="mt-3">
            <div class="form-group">
                <label for="productName">Product Name:</label>
                <input type="text" class="form-control" id="productName" name="searchValue" required>
            </div>
            <div class="form-group">
                <label for="category">Category:</label>
                <select class="form-control" id="category" name="categoryId">
                    <%
                        List<Category> categories = (List<Category>) session.getAttribute("categories");
                        if (categories != null) {
                            for (Category category : categories) {
                    %>
                    <option value="<%= category.getId() %>"><%= category.getName() %></option>
                    <%
                            }
                        } else {
                    %>
                    <option disabled>No categories available.</option>
                    <%
                        }
                    %>
                </select>
            </div>

            <input type="hidden" name="categoryId" id="hiddenCategoryId" value="%category.getId()%">
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script>
        // JavaScript to set hidden field values before form submission
        document.querySelector('form').addEventListener('submit', function() {
            // Set hidden field value for searchValue
            document.getElementById('hiddenSearchValue').value = document.getElementById('productName').value;
            // Set hidden field value for categoryId
            document.getElementById('hiddenCategoryId').value = document.getElementById('category').value;
        });
    </script>
</body>
</html>
