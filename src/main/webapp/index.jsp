<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>invisiConnect VPN - Login / Signup</title>
  <link rel="stylesheet" href="vpn.css">
</head>
<body>
  <!-- Main Authentication Container -->
  <div class="auth-container">
    <h1>Welcome to <span class="brand-name">invisiConnect</span></h1>
    
    <!-- Tab Navigation to Switch Between Login and Signup Forms -->
    <div class="tabs">
      <button class="tab-button active" id="login-tab" onclick="showTab('login')">Login</button>
      <button class="tab-button" id="signup-tab" onclick="showTab('signup')">Sign Up</button>
    </div>

    <!-- Login Form Section -->
    <div id="login-form" class="form-container">
      <h2>Login to invisiConnect</h2>
      <!-- Login Form to Authenticate User -->
      <form action="#" method="POST">
        <!-- Username Input Field for Login -->
        <div class="input-group">
          <label for="login-username">Username:</label>
          <input type="text" id="login-username" name="username" placeholder="Enter your username" required>
        </div>
        
        <!-- Password Input Field for Login -->
        <div class="input-group">
          <label for="login-password">Password:</label>
          <input type="password" id="login-password" name="password" placeholder="Enter your password" required>
        </div>

        <!-- Submit Button for Login -->
        <button type="submit" class="btn">Login</button>
      </form>
    </div>

    <!-- Signup Form Section -->
    <div id="signup-form" class="form-container" style="display: none;">
      <h2>Create an Account</h2>
      <!-- Signup Form to Register New User -->
      <form action="#" method="POST">
        <!-- Full Name Input Field for Signup -->
        <div class="input-group">
          <label for="signup-name">Full Name:</label>
          <input type="text" id="signup-name" name="name" placeholder="Enter your full name" required>
        </div>
        
        <!-- Username Input Field for Signup -->
        <div class="input-group">
          <label for="signup-username">Username:</label>
          <input type="text" id="signup-username" name="username" placeholder="Choose a username" required>
        </div>

        <!-- Email Input Field for Signup -->
        <div class="input-group">
          <label for="signup-email">Email:</label>
          <input type="email" id="signup-email" name="email" placeholder="Enter your email" required>
        </div>

        <!-- Password Input Field for Signup -->
        <div class="input-group">
          <label for="signup-password">Password:</label>
          <input type="password" id="signup-password" name="password" placeholder="Create a password" required>
        </div>

        <!-- Submit Button for Signup -->
        <button type="submit" class="btn">Sign Up</button>
      </form>
    </div>
  </div>

  <!-- JavaScript for Switching Between Tabs (Login/Signup) -->
  <script>
    // Function to Switch Between Login and Signup Forms
    function showTab(tab) {
      if (tab === 'login') {
        document.getElementById('login-form').style.display = 'block';
        document.getElementById('signup-form').style.display = 'none';
        document.getElementById('login-tab').classList.add('active');
        document.getElementById('signup-tab').classList.remove('active');
      } else {
        document.getElementById('signup-form').style.display = 'block';
        document.getElementById('login-form').style.display = 'none';
        document.getElementById('signup-tab').classList.add('active');
        document.getElementById('login-tab').classList.remove('active');
      }
    }
  </script>
</body>
</html>