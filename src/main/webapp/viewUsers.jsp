<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }
        .container h3 {
            text-align: center;
            color: #1e3a8a;
            font-size: 2em;
            margin-bottom: 20px;
        }
        .user-details {
            margin-bottom: 20px;
        }
        .user-details p {
            font-size: 1.1em;
            margin: 10px 0;
        }
        .btn-group {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }
        .btn {
            padding: 10px 20px;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s ease;
        }
        .btn-primary {
            background: #1e3a8a;
            color: white;
        }
        .btn-primary:hover {
            background: #15356b;
        }
        .btn-secondary {
            background: #ddd;
            color: #333;
        }
        .btn-secondary:hover {
            background: #bbb;
        }
    </style>
</head>
<body>

<div class="container">
    <h3>User Details</h3>
    
    <%-- Fetch the user object from the request attribute set by the servlet --%>
    <%@ page import="com.user.model.User" %>

    <%
        User user = (User) request.getAttribute("user");
        if (user != null) {
    %>

    <div class="user-details">
        <p><strong>Name:</strong> <%= user.getName() %></p>
        <p><strong>Email:</strong> <%= user.getEmail() %></p>
        <p><strong>Country:</strong> <%= user.getCountry() %></p>
        <p><strong>Date of Birth:</strong> <%= user.getDob() %></p>
    </div>

    <% } else { %>
        <p>No user found!</p>
    <% } %>

    <div class="btn-group">
        <a href="list" class="btn btn-primary">Back to User List</a>
        <a href="logout" class="btn btn-secondary">Logout</a>
    </div>
</div>

</body>
</html>
