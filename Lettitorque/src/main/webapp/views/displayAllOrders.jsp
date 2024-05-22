<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.lettitorque.Lettitorque.model.Orders" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Orders</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
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
        <h1>All Orders</h1>
        <div class="row">
            <%
                List<Orders> orders = (List<Orders>) session.getAttribute("orders");
                if (orders != null && !orders.isEmpty()) {
                    for (Orders order : orders) {
            %>
                        <div class="col-12 col-sm-6 col-md-4 col-lg-3 col-xl-2 product-card">
                            <div class="card">
                                <div class="card-body">
                                    <form action="GetUpPage" method="get">
                                        <p class="card-text product-attribute"><strong>Order Date:</strong> <%= order.getOrderDate() %></p>
                                        <p class="card-text product-attribute"><strong>Delivery Date:</strong> <%= order.getDeliveryDate() %></p>
                                        <p class="card-text product-attribute"><strong>Total Amount:</strong> <%= order.getTot_amt() %></p>
                                        <input type="hidden" name="id" value="<%= order.getOrderId() %>">
                                        <button type="submit" class="btn btn-primary">Update</button>
                                    </form>
                                </div>
                            </div>

                        </div>

            <%
                    }
                } else {
            %>
                    <p>No Orders found.</p>
            <%
                }
            %>
        </div>
    </div>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
