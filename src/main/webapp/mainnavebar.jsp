<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Service Sphere</title>

    <style>
        /* Background and body styling */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #82A69C, #3C3A3D);
            color: white;
        }

        /* Horizontal Navbar */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #3C3A3D;
            padding: 10px 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .navbar .app-icon {
            display: flex;
            align-items: center;
            cursor: pointer;
        }

        .navbar img {
            width: 50px;
            height: 50px;
            margin-right: 10px;
            border-radius: 50%;
            border: 2px solid #82A69C;
        }

        .navbar span {
            font-size: 26px;
            font-weight: bold;
            color: #82A69C;
        }

        .navbar a {
            color: #82A69C;
            font-size: 16px;
            font-weight: bold;
            text-decoration: none;
            margin: 0 10px;
            padding: 8px 15px;
            border-radius: 25px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .navbar a:hover {
            background-color: #82A69C;
            color: #3C3A3D;
        }

        /* Responsive Content Section */
        .content {
            padding: 40px 20px;
            text-align: center;
        }

        /* Button Styling */
        .btn-custom {
            background-color: #82A69C;
            color: #3C3A3D;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            font-weight: bold;
            border-radius: 25px;
            transition: transform 0.3s ease, background-color 0.3s ease;
        }

        .btn-custom:hover {
            background-color: #3C3A3D;
            color: #82A69C;
            transform: scale(1.1);
        }

        /* Media Queries for responsiveness */
        @media (max-width: 768px) {
            .navbar a {
                margin: 5px;
                font-size: 14px;
                padding: 8px 10px;
            }

            .navbar span {
                font-size: 20px;
            }

            .navbar img {
                width: 40px;
                height: 40px;
            }

            .content h1 {
                font-size: 28px;
            }

            .content p {
                font-size: 16px;
            }

            .btn-custom {
                font-size: 14px;
                padding: 8px 16px;
            }
        }
    </style>
</head>
<body>
    <!-- Horizontal Navbar -->
    <div class="navbar">
        <!-- Application Icon -->
        <div class="app-icon" onclick="location.href='/'">
            <img src="https://media0.giphy.com/media/l378e1RBMH4Vkae1W/200w.gif?cid=82a1493b94o9fmj1xpf4ecn53s0xillv2dzhbbkuhia3ews7&ep=v1_gifs_related&rid=200w.gif&ct=g" alt="SERVICE SPHERE Logo">
            <span>SERVICE SPHERE</span>
        </div>
        <!-- Navigation Links -->
        <div>
            <a href="/">Home</a>
            <a href="about">About Us</a>
            <a href="contact.jsp">Contact</a>
            <a href="customerlogin">Customer Login</a>
            <a href="adminlogin">Admin Login</a>
        </div>
    </div>

    <!-- Main Content -->
    
</body>
</html>
