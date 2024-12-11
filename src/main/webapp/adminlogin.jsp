<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login Form</title>
<%@include file="mainnavebar.jsp" %>

<!-- Add CSS for background image and styling -->
<style>
    body {
         /* Background image */
        background-size: cover;
        background-position: center;
        font-family: Arial, sans-serif;
        color: white;
        margin: 0;
        padding: 0;
    }

    .container {
        background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent background for the form */
        padding: 30px;
        border-radius: 10px;
        max-width: 400px;
        margin: 90px auto;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.5);
        color: black;
    }

    h3 {
        font-size: 28px;
        font-weight: bold;
        text-transform: uppercase;
        text-align: center;
        margin-top: 30px;
        color: #3C3A3D; /* Dark text for title */
    }

    .form-group {
        margin-bottom: 20px;
    }

    .form-group label {
        font-weight: bold;
        color: #3C3A3D; /* Updated label color */
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
        transition: background-color 0.3s ease;
    }

    .btn-success {
        background-color: #82A69C; /* Updated to match the palette */
        color: white;
    }

    .btn-success:hover {
        background-color: #3C3A3D; /* Hover effect color */
    }

    .btn-reset {
        background-color: #6c757d;
        color: white;
    }

    .btn-reset:hover {
        background-color: #5a6268;
    }

    .error-message {
        color: red;
        text-align: center;
        font-weight: bold;
        margin-bottom: 20px;
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
            padding: 15px;
        }
    }
</style>
</head>
<body>

<h3>Admin Login Form</h3>
<div class="container">
    <!-- Display dynamic error messages -->
    <c:if test="${not empty message}">
        <div class="error-message">${message}</div>
    </c:if>

    <form method="post" action="checkadminlogin">
        <div class="form-group">
            <label for="auname">Enter Username</label>
            <input type="text" id="auname" class="form-control" name="auname" required/>
        </div>

        <div class="form-group">
            <label for="apwd">Enter Password</label>
            <input type="password" id="apwd" class="form-control" name="apwd" required/>
        </div>

        <div class="button-container">
            <input type="submit" value="Login" class="btn btn-success"/>
            <input type="reset" value="Clear" class="btn btn-reset"/>
        </div>
    </form>
</div>

<%@include file="footer.jsp" %>
</body>
</html>
