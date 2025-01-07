<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: #f4f4f9;
            color: #333;
            line-height: 1.6;
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

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .form-group input:focus {
            border-color: #1e3a8a;
            outline: none;
            box-shadow: 0 0 5px rgba(30, 58, 138, 0.5);
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

        .btn-register {
            background: #28a745;
            color: white;
            margin-top: 15px;
            text-align: center;
            display: block;
        }

        .btn-register:hover {
            background: #218838;
        }
    </style>
</head>
<body>
    <div class="container">
        <h3>Login</h3>
        <form action="loginprocess" method="post">
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter Email Address" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Password" required>
            </div>
            <div class="btn-group">
                <button type="submit" class="btn btn-primary">Login</button>
                <button type="reset" class="btn btn-secondary">Reset</button>
            </div>
        </form>
        <a href="registration.jsp" class="btn btn-register">Register</a>
    </div>
</body>
</html>
