<%@ page import="com.lettitorque.Lettitorque.model.Category" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Search Category</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center">Search Category</h2>
    <form action="UpdateCategory" method="post" class="mt-4">
        <div class="form-group">
              <% Category category = (Category)session.getAttribute("category"); %>

            <label for="searchValue">Name</label>
            <input type="text" class="form-control" id="Name" name="name" required>
        </div>
        <div class="form-group">
              <label for="searchValue">Description</label>

                    <input type="text" class="form-control" id="Description" name="description" required>
                </div>
          <input type="hidden" name="id" value="<%= category.getId()%>">
        <button type="submit" class="btn btn-primary">Save update</button>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
