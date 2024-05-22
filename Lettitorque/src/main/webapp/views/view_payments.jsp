<%@page import="java.util.List"%>
<%@page import="com.lettitorque.Lettitorque.model.Payment"%>
<%@page import="java.util.Date"%>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Payments | Lettitorque</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
                <a class="nav-link" href="/home">Home</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="productDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Products
                </a>
                <div class="dropdown-menu" aria-labelledby="productDropdown">
                    <div class="dropdown-submenu">
                        <a class="dropdown-item dropdown-toggle" href="#">Manage Products</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="addProduct.jsp">Add Product</a>
                            <a class="dropdown-item" href="updateProduct.jsp">Update Product</a>
                            <a class="dropdown-item" href="viewProducts.jsp">View Products</a>
                            <a class="dropdown-item" href="deleteProducts.jsp">Delete Products</a>
                        </div>
                    </div>
                    <div class="dropdown-submenu">
                        <a class="dropdown-item dropdown-toggle" href="#">Product Categories</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="AddCategoryPage.jsp">Add Category</a>
                            <a class="dropdown-item" href="updateCategory.jsp">Update Category</a>
                            <a class="dropdown-item" href="viewCategories.jsp">View Categories</a>
                        </div>
                    </div>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="ordersDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Orders
                </a>
                <div class="dropdown-menu" aria-labelledby="ordersDropdown">
                    <a class="dropdown-item" href="viewOrders.jsp">View Orders</a>
                    <a class="dropdown-item" href="updateOrder.jsp">Update Order</a>
                    <a class="dropdown-item" href="deleteOrder.jsp">Delete Order</a>
                    <a class="dropdown-item" href="searchOrder.jsp">Search</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="paymentsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Payments
                </a>
                <div class="dropdown-menu" aria-labelledby="paymentsDropdown">
                    <a class="dropdown-item" href="ViewPayments.jsp">View Payments</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="usersDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Manage User(s)
                </a>
                <div class="dropdown-menu" aria-labelledby="usersDropdown">
                    <a class="dropdown-item" href="manageUsers.jsp">Add User</a>
                    <a class="dropdown-item" href="updateUser.jsp">Update User</a>
                    <a class="dropdown-item" href="viewUsers.jsp">View Users</a>
                    <a class="dropdown-item" href="deleteUser.jsp">Delete User</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="reports.jsp">Generate Reports</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="settings.jsp">Settings</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Logout">Logout</a>
            </li>
        </ul>
    </div>
</nav>

<div class="container">
    <%
        List<Payment> list = (List<Payment>) session.getAttribute("payments");
        for (int i = 0; i < list.size(); i++) {
            Payment payment = list.get(i);
            Long pmtId = payment.getPmtId();
            Date date = payment.getPmtDate();
    %>

    <div class="row justify-content-center">
        <div class="col-12 col-md-6">
            <form action="ViewPaymentDetails" method="post">
                <input type="hidden" name="pmtId" value=<%=pmtId%> />

                <div class="card mb-3">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <p class="card-text">Payment Id: <%=pmtId%></p>
                                <p class="card-text">Payment Date: <%=date%></p>
                            </div>
                            <div class="col-auto align-self-center">
                                <input type="submit" class="btn btn-primary" value="View Payment">
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <br/><br/>
    <% } %>
</div>

<footer class="mt-5">
    <div class="container">
        <div class="row justify-content-between">
            <div class="col-auto">© 2024 Lettitorque. All rights reserved.</div>
            <div class="col-auto">employee</div>
        </div>
    </div>
</footer>

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
