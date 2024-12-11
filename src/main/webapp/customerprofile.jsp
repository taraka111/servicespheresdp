<%@ page import="com.klef.jfsd.springboot.model.Customer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Home - Profile</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        /* Background and body styling */
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #82A69C, #3C3A3D);
        }

        /* Profile Container */
        .profile-container {
            max-width: 600px;
            margin: 50px auto;
            background: white;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            padding: 30px;
            text-align: center;
        }

        /* Profile Header */
        .profile-header {
            background: linear-gradient(135deg, #82A69C, #3C3A3D);
            color: white;
            padding: 20px;
            border-radius: 10px 10px 0 0;
        }

        .profile-header h2 {
            margin: 0;
            font-size: 26px;
        }

        /* Profile Body */
        .profile-body {
            padding: 20px;
            font-size: 18px;
            color: #333;
        }

        .profile-body p {
            margin: 10px 0;
        }

        .profile-body span {
            font-weight: bold;
            color: #3C3A3D;
        }

        /* Button Styling */
        .btn-primary {
            margin-top: 20px;
            display: block;
            width: 100%;
            padding: 12px;
            font-size: 16px;
            font-weight: bold;
            background-color: #82A69C;
            color: white;
            border: none;
            border-radius: 5px;
            transition: all 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #3C3A3D;
        }

        /* Media Queries for Responsiveness */
        @media (max-width: 768px) {
            .profile-header h2 {
                font-size: 22px;
            }

            .profile-body p {
                font-size: 16px;
            }

            .btn-primary {
                font-size: 14px;
                padding: 10px;
            }
        }
    </style>
</head>
<body>

    <%@include file="customernavbar.jsp" %>

    <div class="profile-container">
        <div class="profile-header">
            <h2>Have a good day, <%= c.getName() %>!</h2>
        </div>
        <div class="profile-body">
            <p><span>ID:</span> <%= c.getId() %></p>
            <p><span>Name:</span> <%= c.getName() %></p>
            <p><span>Date of Birth:</span> <%= c.getDateofbirth() %></p>
            <p><span>Email:</span> <%= c.getEmail() %></p>
            <p><span>Location:</span> <%= c.getLocation() %></p>
            <p><span>Contact Number:</span> <%= c.getContact() %></p>
        </div>
        <a href="editProfile.jsp" class="btn-primary">Edit Profile</a>
    </div>

</body>
</html>
