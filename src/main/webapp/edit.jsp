<%@ page import="model.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit User</title>
</head>
<body>
    <h3>Edit User</h3>
    <form action="update" method="post">
        <input type="hidden" name="id" value="<%= request.getAttribute("user").getId() %>">
        
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="<%= request.getAttribute("user").getName() %>" required><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="<%= request.getAttribute("user").getEmail() %>" required><br><br>

        <label for="country">Country:</label>
        <input type="text" id="country" name="country" value="<%= request.getAttribute("user").getCountry() %>" required><br><br>

        <button type="submit">Update</button>
    </form>
</body>
</html>
