<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/style2.css">
    <style>
         body {
            position: relative;
            background: url('../images/welcome-hero/welcome-banner.jpg') no-repeat;
            background-position: center;
            background-size: cover;
            z-index: 1;
        }
        body:before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(42, 45, 84, 0.60);
            z-index: 0;
        }
        .error-message {
            color: red;
        }
    </style>
</head>
<body>
    <div class="navbar-header" style="position: relative; z-index: 1000;">
        <a class="navbar-brand" href="/home" style="color: #FFC23C; padding-left: 180px;">ABC CARS<span></span></a>
    </div>
    
    <div class="container">
        <form action="/register" method="post" onsubmit="return validateForm()">
            <h2>Register Form</h2>
            <!-- CSRF token -->
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            <form:hidden path="id" />
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
                <!-- Display username error message -->
                <c:if test="${not empty usernameError}">
                    <div class="error-message">${usernameError}</div>
                </c:if>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
                <!-- Display email error message -->
                <c:if test="${not empty emailError}">
                    <div class="error-message">${emailError}</div>
                </c:if>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <div class="input-group">
                    <input type="password" id="password" name="password" class="form-control" required>
                    <span class="input-group-text toggle-password" onclick="togglePasswordVisibility('password')">
                        <i class="bi bi-eye"></i>
                    </span>
                </div>
                <!-- Display password error message -->
                <div class="error-message" id="passwordError"></div>
            </div>
            <div class="form-group">
                <h5><input type="checkbox" name="rememberMe">Remember Me</h5>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Register</button>
            </div>
            <div>
                <p>Already have an account? <a href="/loginform">Login here</a></p>
            </div>
        </form>
        
    </div>
    <script src="js/scripts.js"></script>
    <script>
        function togglePasswordVisibility(inputId) {
            const passwordInput = document.getElementById(inputId);
            const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordInput.setAttribute('type', type);
        }
    
        function validateForm() {
            var password = document.getElementById("password").value;
            var passwordError = document.getElementById("passwordError");
            var pattern = /^(?=.*[0-9])(?=.*[a-zA-Z])[a-zA-Z0-9]{6,}$/;
    
            if (password.length < 6) {
                passwordError.innerHTML = "Password must be at least 6 characters long.";
                return false;
            } else if (!/\d/.test(password)) {
                passwordError.innerHTML = "Password must contain at least one number.";
                return false;
            } else if (!/[a-zA-Z]/.test(password)) {
                passwordError.innerHTML = "Password must contain at least one letter.";
                return false;
            } else {
                passwordError.innerHTML = "";
                return true;
            }
        }
    </script>
    
</body>
</html>
