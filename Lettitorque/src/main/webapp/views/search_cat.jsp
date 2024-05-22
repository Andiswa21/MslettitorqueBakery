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
    <form action="SubmitSearch" method="post" class="mt-4">
        <div class="form-group">
            <label for="searchValue">Search Value</label>
            <input type="text" class="form-control" id="searchValue" name="name" required>
        </div>
        <button type="submit" class="btn btn-primary">Search</button>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
