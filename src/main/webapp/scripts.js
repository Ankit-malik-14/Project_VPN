document.addEventListener("DOMContentLoaded", () => {
    const loginForm = document.getElementById("login-form");
    const signupForm = document.getElementById("signup-form");
    const vpnToggleBtn = document.getElementById("vpn-toggle-btn");
    const statusDisplay = document.getElementById("status");
    let isConnected = false;

    // Handle login form submission
    if (loginForm) {
        loginForm.addEventListener("submit", (event) => {
            event.preventDefault();
            const username = document.getElementById("username").value;
            const password = document.getElementById("password").value;

            // Simulate login process
            if (username === "admin" && password === "password") {
                alert("Login successful!");
                loginForm.reset();
            } else {
                alert("Invalid credentials. Try again.");
            }
        });
    }

    // Handle signup form submission
    if (signupForm) {
        signupForm.addEventListener("submit", (event) => {
            event.preventDefault();
            const newUsername = document.getElementById("new-username").value;
            const newPassword = document.getElementById("new-password").value;
            const email = document.getElementById("email").value;

            // Simulate signup process
            if (newUsername && newPassword && email) {
                alert(`Signup successful for user: ${newUsername}`);
                signupForm.reset();
            } else {
                alert("Please fill out all fields.");
            }
        });
    }

    // Handle VPN connect/disconnect toggle
    if (vpnToggleBtn) {
        vpnToggleBtn.addEventListener("click", () => {
            isConnected = !isConnected;
            statusDisplay.textContent = isConnected ? "Connected" : "Disconnected";
            vpnToggleBtn.textContent = isConnected ? "Disconnect" : "Connect";
            statusDisplay.style.color = isConnected ? "limegreen" : "red";
        });
    }
});
