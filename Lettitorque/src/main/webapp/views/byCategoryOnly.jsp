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
        <h2 class="mt-5">Category Product</h2>
        <form action="SomeProducts" method="post" enctype="multipart/form-data" class="mt-3">
            <div class="form-group">
                <label for="productName">Select Category</label>

            </div>
            <div class="form-group">
                <label for="category">Category:</label>
                <select class="form-control" id="category" name="id">
                    <%
                    List<Category> cat = (List<Category>) session.getAttribute("cat");
                    if (cat != null) {
                        for (Category kat : cat) {
                    %>
                    <option value="<%=kat.getId()%>"><%= kat.getName()%></option>
                    <%
                        }
                    } else {
                    %>
                    <option disabled selected>No categories available</option>
                    <%
                    }
                    %>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
