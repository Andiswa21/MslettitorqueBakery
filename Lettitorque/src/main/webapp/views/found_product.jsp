<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.lettitorque.Lettitorque.model.Orders" %>
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
            width: 100%;
            height: auto;
            object-fit: cover;
        }
        .product-card {
            margin-bottom: 20px;
        }
        .product-attribute {
            margin-bottom: 5px;
        }
        .card-body {
            padding: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Product Details</h1>
        <div class="row">
            <%
                Product product = (Product) session.getAttribute("matchingProduct");
                if (product != null) {
                    byte[] imageBytes = product.getProdImage();
                    String img = "";
                    if (imageBytes != null && imageBytes.length > 0) {
                        img = Base64.getEncoder().encodeToString(imageBytes);
                    }
            %>
            <div class="col-12 col-sm-6 col-md-4 col-lg-3 col-xl-2 product-card">
                <div class="card">
                    <% if (!img.isEmpty()) { %>
                    <img src="data:image/png;base64, <%= img %>" alt="Product Image" class="card-img-top">
                    <% } %>
                    <div class="card-body">
                        <p class="card-text product-attribute"><strong>Id Number:</strong> <%= product.getId() %></p>
                        <p class="card-text product-attribute"><strong>Name:</strong> <%= product.getName() %></p>
                        <p class="card-text product-attribute"><strong>Description:</strong> <%= product.getDescription() %></p>
                        <p class="card-text product-attribute"><strong>Price:</strong> <%= product.getPrice() %></p>
                        <p class="card-text product-attribute"><strong>Quantity / Size:</strong> <%= product.getQuantity() %></p>
                        <p class="card-text product-attribute"><strong>Category:</strong> <%= product.getCategory().getName() %></p>
                    </div>
                </div>
            </div>
            <%
                } else {
            %>
            <p>No Product found.</p>
            <%
                }
            %>
        </div>
        <button type="button" class="btn btn-primary" onclick="goToHomePage()">Go to Home Page</button>
    </div>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        function goToHomePage() {
            window.location.href = "/home"; // Replace "/home" with the actual URL of your home page
        }
    </script>
</body>
</html>
