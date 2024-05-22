<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.lettitorque.Lettitorque.model.Category" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h1>Categories!</h1>
        <!-- Notification Button -->
        <%
            List<Category> cat = (List<Category>) session.getAttribute("cat");
            if (cat != null) {
                for (Category kat : cat) {
        %>

        Id Number : <%= kat.getId() %><br>
        Name : <%= kat.getName() %><br>
        Description : <%= kat.getDescription() %><br>

        <br><hr>

        <%
                }
            } else {
        %>
        <p>No categories available.</p>
        <%
            }
        %>
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
