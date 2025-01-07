<%@ page import="model.User" %>
<%@ page import="dao.UserDAO" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View User</title>
</head>
<body>
    <h3>User Details</h3>
    <table border="1">
        <tr>
            <td>ID:</td>
            <td><%= request.getAttribute("user").getId() %></td>
        </tr>
        <tr>
            <td>Name:</td>
            <td><%= request.getAttribute("user").getName() %></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><%= request.getAttribute("user").getEmail() %></td>
        </tr>
        <tr>
            <td>Country:</td>
            <td><%= request.getAttribute("user").getCountry() %></td>
        </tr>
    </table>
    <a href="list">Back to User List</a>
</body>
</html>
