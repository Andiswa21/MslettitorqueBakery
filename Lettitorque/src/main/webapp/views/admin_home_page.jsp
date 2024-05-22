<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.lettitorque.Lettitorque.model.Orders" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .dropdown-submenu {
            position: relative;
        }

        .dropdown-submenu .dropdown-menu {
            top: 0;
            left: 100%;
            margin-top: -1px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Admin Dashboard</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="productDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Products
                    </a>
                    <div class="dropdown-menu" aria-labelledby="productDropdown">
                        <div class="dropdown-submenu">
                            <a class="dropdown-item dropdown-toggle" href="#">Manage Products</a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="GetAddProductPage">Add Product</a>
                                <a class="dropdown-item" href="GetProductsBy">Update Product</a>
                                <a class="dropdown-item" href="GetAllProducts">View All Products</a>
                                <a class="dropdown-item" href="OnlyCategory">View By Category</a>
                                 <a class="dropdown-item" href="GetProductsByCategory">Search (Name and Category)</a>
                                <a class="dropdown-item" href="DeleteProduct">Delete Products</a>
                            </div>
                        </div>
                        <div class="dropdown-submenu">
                            <a class="dropdown-item dropdown-toggle" href="#">Manage Categories</a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="AddCategoryPage">Add Category</a>
                                <a class="dropdown-item" href="GetAllCategoriesPage">View Categories</a>
                                <a class="dropdown-item" href="SearchCategoryPage">Update Category</a>
                                <a class="dropdown-item" href="SearchCategoryPage">Search Category</a>
                                <a class="dropdown-item" href="GetDeleteConfirmPage">Delete Category</a>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="ordersDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Orders
                    </a>
                    <div class="dropdown-menu" aria-labelledby="ordersDropdown">
                        <a class="dropdown-item" href="GetOrdersPage">View Orders</a>
                        <a class="dropdown-item" href="GetOrderByIdPage">View Order(ById)</a>

                    </div>
                </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="paymentsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Payments
                    </a>
                    <div class="dropdown-menu" aria-labelledby="paymentsDropdown">
                        <a class="dropdown-item" href="ViewPayments">View Payments</a>
                    </di
                    </div>
                </li>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="usersDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Manage User(s)
                    </a>
                    <div class="dropdown-menu" aria-labelledby="UserDropd
                    </div>own">
                        <a class="dropdown-item" href="manageUsers.jsp">Add User</a>
                        <a class="dropdown-item" href="manageUsers.jsp">Update User</a>
                        <a class="dropdown-item" href="manageUsers.jsp">View Users</a>
                        <a class="dropdown-item" href="manageUsers.jsp">Delete User</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="reports.jsp">Generate Reports</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="settings.jsp">Settings</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container mt-5">
        <h3>Orders</h3>
        <table class="table table-bordered mt-3">
            <thead>
                <tr>
                    <th>Order Date</th>
                    <th>Delivery Date</th>
                    <th>Status</th>
                    <th>Total Amount</th>
                </tr>
            </thead>
            <tbody>
           <%    String stat = null;
                List<Orders> orders = (List<Orders>) session.getAttribute("orders");
                if (orders != null && !orders.isEmpty()) {
                    for (Orders order : orders) {
                    if(order.getStatus() == true){
                     stat = "Active";}else{ stat = "Inactive";}
            %>
                        <div class="col-12 col-sm-6 col-md-4 col-lg-3 col-xl-2 product-card">
                            <div class="card">
                                <div class="card-body">
                                    <form action="GetUpPage" method="get">
                                    <tr>
                                       <td> <p class="card-text product-attribute"><%= order.getOrderDate() %></p></td>
                                       <td> <p class="card-text product-attribute"> <%= order.getDeliveryDate() %></p></td>
                                       <td> <p class="card-text product-attribute"> <%= stat %></p></td>
                                       <td> <p class="card-text product-attribute"><%= order.getTot_amt() %></p></td>
                                    </tr>
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
            </tbody>
        </table>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function(){
            $('.dropdown-submenu a.dropdown-toggle').on("click", function(e){
                $(this).next('div').toggle();
                e.stopPropagation();
                e.preventDefault();
            });
        });
    </script>
</body>
</html>

