<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SecureVPN</title>
    <!-- Link to external CSS -->
    <link rel="stylesheet" href="css/styles.css">
    <!-- Link to external JavaScript -->
    <script src="js/scripts.js" defer></script>
</head>
<body>
    <div class="container">
        <header>
            <h1>Welcome to SecureVPN</h1>
            <p>Secure your online experience with our trusted VPN service.</p>
        </header>

        <main>
            <div class="login-form">
                <form action="AuthenticateServlet" method="post">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required>
                    
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                    
                    <button type="submit" class="btn-login">Login</button>
                </form>
                <p>New to SecureVPN? <a href="register.jsp">Register here</a></p>
            </div>
        </main>

        <footer>
            <p>&copy; 2024 SecureVPN. All rights reserved for BUG-BUDDIES.</p>
        </footer>
    </div>
</body>
</html>
