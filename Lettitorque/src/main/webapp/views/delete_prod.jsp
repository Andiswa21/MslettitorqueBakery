<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.lettitorque.Lettitorque.model.Product" %>
<%@ page import="com.lettitorque.Lettitorque.model.Category" %>
<%@ page import="java.util.Base64" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .product-card img {
            width: 100px; /* Set a fixed width */
            height: 100px; /* Set a fixed height */
            object-fit: cover; /* Ensure the image covers the container without stretching */
        }
        .product-card {
            margin-bottom: 10px; /* Space between cards */
        }
        .product-attribute {
            margin-bottom: 0; /* Further reduce space between attributes */
        }
        .card-body {
            padding: 10px; /* Reduce padding inside the card */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Select product to delete!</h1>
        <!-- Products Grid -->
        <div class="row">
        <%
            List<Product> allProducts = (List<Product>) session.getAttribute("products");
            if (allProducts != null && !allProducts.isEmpty()) {
                for (Product prod : allProducts) {
                    byte[] imageBytes = prod.getProdImage(); // Adjust the method name if it's different
                    String img = "";
                    if (imageBytes != null && imageBytes.length > 0) {
                        img = Base64.getEncoder().encodeToString(imageBytes);
                    }
        %>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 col-xl-2 product-card">
                <div class="card">
                    <% if (!img.isEmpty()) { %>
                    <img src="data:image/png;base64,<%= img %>" alt="pic" class="card-img-top">
                    <% } %>
                    <div class="card-body">
                        <p class="card-text product-attribute"><strong>Id Number:</strong> <%= prod.getId() %></p>
                        <p class="card-text product-attribute"><strong>Name:</strong> <%= prod.getName() %></p>
                        <p class="card-text product-attribute"><strong>Description:</strong> <%= prod.getDescription() %></p>
                        <p class="card-text product-attribute"><strong>Price:</strong> <%= prod.getPrice() %></p>
                        <p class="card-text product-attribute"><strong>Quantity / Size:</strong> <%= prod.getQuantity() %></p>
                        <p class="card-text product-attribute"><strong>Category:</strong> <%= prod.getCategory().getName() %></p>
                        <form action="DeleteProd" method="post">
                            <input type="hidden" name="name" id="productName" value="<%= prod.getName() %>">
                            <input type="hidden" name="categoryName" id="categoryName" value="<%= prod.getCategory().getName() %>">
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </form>
                    </div>
                </div>
            </div>
        <%
                }
            } else {
        %>
            <p>No Products available.</p>
        <%
            }
        %>
        </div>
        <button type="button" class="btn btn-primary" onclick="goToHomePage()">Go to Home Page</button>
    </div>
    <!-- Bootstrap JS (optional if needed) -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- JavaScript Function to Redirect to Home Page -->
    <script>
        function goToHomePage() {
            window.location.href = "/home"; // Replace "/home" with the actual URL of your home page
        }
    </script>
</body>
</html>
