<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Optional" %>
<%@ page import="com.lettitorque.Lettitorque.model.Product" %>
<%@ page import="java.util.Base64" %>
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
        <form action="MakeChanges" method="post" enctype="multipart/form-data" class="mt-3">
            <div class="form-group">
                <label for="productName">Product Name:</label>
                <input type="text" class="form-control" id="productName" name="newName" required>
            </div>
            <div class="form-group">
                <label for="quantity">Quantity/Size (g / Kg):</label>
                <input type="number" class="form-control" id="quantity" name="newQuantity" required>
            </div>
            <div class="form-group">
                <label for="price">Price:</label>
                <input type="number" class="form-control" id="price" name="newPrice" step="0.01" required>
            </div>
            <div class="form-group">
                <label for="image">Image:</label>
                <input type="file" class="form-control-file" id="image" name="newImage" accept="image/*">
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <textarea class="form-control" id="description" name="newDescription" rows="4"></textarea>
            </div>
            <div class="form-group">
                <label for="category">Category:</label>
                <select class="form-control" id="category" name="newId">
                    <%
                        Optional<Product> product = (Optional<Product>) session.getAttribute("product");
                        List<Category> cat = (List<Category>) session.getAttribute("cates");
                        if (cat != null) {
                            for (Category kat : cat) {
                    %>
                    <option value="<%= kat.getId() %>"><%= kat.getName() %></option>
                    <%
                            }
                        } else {
                    %>
                    <option>No categories available</option>
                    <%
                        }
                    %>
                </select>
            </div>
            <%
                if (product.isPresent()) {
            %>
             <input type="hidden" name="productId" id="productId" value="<%= product.get().getId() %>">
            <%
                }
            %>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
