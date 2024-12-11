<%@ page import="com.klef.jfsd.springboot.model.Admin" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
Admin admin = (Admin) session.getAttribute("admin");
if(admin == null)
{
    session.setAttribute("error", "Session expired. Please log in again.");
    response.sendRedirect("adminlogin.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JFSD - Admin Dashboard</title>
    
    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .navbar {
            background: linear-gradient(90deg, #82A69C, #3C3A3D);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }
        .navbar-brand {
            font-size: 24px;
            font-weight: bold;
            color: #fff !important;
        }
        .navbar-text {
            color: #ffffff;
            font-size: 20px;
            font-weight: 600;
            margin-right: 20px;
        }
        .btn {
            margin: 0 10px;
            font-size: 16px;
            padding: 8px 20px;
            border-radius: 25px;
            transition: transform 0.3s, background-color 0.3s;
        }
        .btn:hover {
            transform: scale(1.1);
        }
        .btn-success:hover {
            background-color: #28a745;
            color: #fff;
        }
        .btn-info:hover {
            background-color: #17a2b8;
            color: #fff;
        }
        .btn-danger:hover {
            background-color: #dc3545;
            color: #fff;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid d-flex justify-content-between align-items-center">
            <a class="navbar-brand" href="#">SERVICE SPHERE</a>
            <span class="navbar-text">
                  Welcome, <%= admin.getUsername() %>!
            </span>
            <div>
                <a href="adminhome" class="btn btn-success">Home</a>
                <a href="viewallcustomers" class="btn btn-info">View Customers</a>
                <a href="/adminlogout" class="btn btn-danger">Logout</a>
            </div>
        </div>
    </nav>

    <!-- Bootstrap 5 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
