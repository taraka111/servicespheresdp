<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Fail</title>
<!-- Add some basic CSS for better user experience -->
<style>
    body {
        font-family: Arial, sans-serif;
        text-align: center;
        background-color: #f8d7da;
        color: #721c24;
        padding-top: 50px;
    }

    .message {
        font-size: 20px;
        font-weight: bold;
    }

    a {
        color: #007bff;
        text-decoration: none;
        font-size: 18px;
        padding: 10px;
        border: 1px solid #007bff;
        border-radius: 5px;
    }

    a:hover {
        background-color: #007bff;
        color: white;
    }
</style>
</head>
<body>

<!-- Display the error message passed from the backend -->
<div class="message">
    <c:out value="${message}"></c:out>
</div>
<br/>
<!-- Link to retry login -->
<a href="adminlogin">Try Again</a>

</body>
</html>
