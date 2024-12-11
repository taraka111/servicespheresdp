<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Login</title>

    <!-- Add CSS for background image and styling -->
    <style>
        body {
            background-image: url('https://example.com/path/to/image.jpg'); /* Background image */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-family: Arial, sans-serif;
            color: white;
            margin: 0;
            padding: 0;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.85); /* Light background for the form */
            padding: 30px;
            border-radius: 10px;
            max-width: 400px;
            margin: 90px auto;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.5);
            color: black;
        }

        h3, h4 {
            font-size: 28px;
            font-weight: bold;
            color: #3C3A3D; /* Dark color for titles */
            text-transform: uppercase;
            text-align: center;
            margin-top: 40px;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            font-weight: bold;
            color: #3C3A3D; /* Dark color for labels */
        }

        .form-control {
            width: 100%;
            padding: 12px;
            margin-top: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
            gap: 10px;
        }

        .btn {
            padding: 12px 20px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            font-size: 16px;
            width: 48%;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .btn-success {
            background-color: #82A69C; /* Updated to match the palette */
            color: white;
        }

        .btn-success:hover {
            background-color: #3C3A3D; /* Hover effect color */
            transform: scale(1.05);
        }

        .btn-reset {
            background-color: #6c757d;
            color: white;
        }

        .btn-reset:hover {
            background-color: #5a6268;
        }

        .signup-link {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #007bff;
        }

        .signup-link a {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }

        .signup-link a:hover {
            text-decoration: underline;
        }

        .alert {
            font-size: 16px;
            text-align: center;
            color: #ff6347; /* Red alert color */
        }

        /* Responsive adjustments */
        @media screen and (max-width: 768px) {
            .container {
                max-width: 90%;
                margin: 20px;
                padding: 25px;
            }

            h3 {
                font-size: 24px;
            }

            .form-control {
                padding: 14px;
            }
        }
    </style>
</head>
<body>

<%@include file="mainnavebar.jsp" %>

<!-- Display the message -->
<c:if test="${not empty message}">
    <h4 class="alert alert-warning"><c:out value="${message}"></c:out></h4>
</c:if>

<h3>Customer Login Form</h3>

<div class="container">
    <form method="post" action="checkcustomerlogin">
        <div class="form-group">
            <label for="cemail">Enter Email</label>
            <input type="email" id="cemail" class="form-control" name="cemail" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"/>
        </div>

        <div class="form-group">
            <label for="cpwd">Enter Password</label>
            <input type="password" id="cpwd" class="form-control" name="cpwd" required/>
            <input type="checkbox" onclick="togglePassword()"> Show Password
            <script>
                function togglePassword() {
                    var pwdField = document.getElementById('cpwd');
                    pwdField.type = (pwdField.type === 'password') ? 'text' : 'password';
                }
            </script>
        </div>

        <div class="button-container">
            <input type="submit" value="Login" class="btn btn-success"/>
            <input type="reset" value="Clear" class="btn btn-reset"/>
        </div>
    </form>

    <!-- Signup Link -->
    <div class="signup-link">
        <p>Don't have an account? <a href="customerreg">Sign up</a></p>
    </div>
</div>

<%@include file="footer.jsp" %>

</body>
</html>
