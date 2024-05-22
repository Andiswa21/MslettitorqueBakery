<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Date Selection</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h1>Select a Date</h1>
     <form action="UpdateOrder" method="post">
         <div class="form-group">
             <% Long id = (Long) session.getAttribute("id"); %>
             <label for="selectedDate">Choose a Date:</label>
             <input type="date" id="selectedDate" name="newDeliveryDate" class="form-control">
         </div>
         <!-- Pass the order ID as a hidden input -->
         <input type="hidden" name="id" value="<%= id %>">
         <button type="submit" class="btn btn-primary">Submit</button>
     </form>

    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
