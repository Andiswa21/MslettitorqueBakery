<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.lettitorque.Lettitorque.model.Category" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Search Category</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center">Search Category</h2>
    <form action="SubmitSearch" method="POST" class="mt-4">
        <div class="form-group">
        <h1>Search Result</h1>
            <label for="searchType"></label>
            <% Category category = (Category)session.getAttribute("category"); %>
            <% if (category != null) { %>
                Id Number: <%=category.getId()%><br>
                Name: <%=category.getName() %><br>
                Description:  <%=category.getDescription() %><br>
                <hr>
                 <form action="GetDeleteConfirmPage" method="get">
                 <input type="hidden" name="id" value="<%= category.getId()%>">

                </form>
                <form action="GetUpdatePage" method="get">
                <input type="hidden" name="id" value="<%= category.getId()%>">
                <button type="submit" class="btn btn-primary">Update</button>
                </form>
            <% } else { %>
                No category found.
            <% } %>
        </div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
