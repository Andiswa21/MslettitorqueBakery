<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .center-content {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }
    </style>
</head>
<body>
    <div class="container center-content">
        <p>${msg}</p>
        <!-- Notification Button -->
        <button type="button" class="btn btn-success" onclick="goBack()">Ok</button>
    </div>
    <!-- Bootstrap JS (optional if needed) -->
    <c:if test="${not empty errorMessage}">
            <div class="error">
                <p>${errorMessage}</p>
            </div>
        </c:if>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- JavaScript Function to Redirect to Previous Page -->
    <script>
        function goBack() {
            window.history.back();
        }
    </script>
</body>
</html>
