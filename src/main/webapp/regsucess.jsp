<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        /* Background and body styling */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #82A69C, #3C3A3D);
            color: white;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        /* Styling for the success message */
        .success-message {
            padding: 50px 20px;
            margin: 50px auto;
            max-width: 600px;
            background-color: rgba(0, 0, 0, 0.6);
            border-radius: 10px;
        }

        .success-message h1 {
            font-size: 36px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .success-message p {
            font-size: 18px;
            margin-bottom: 30px;
        }

        .btn-login {
            background-color: #82A69C;
            color: #3C3A3D;
            font-size: 18px;
            font-weight: bold;
            padding: 10px 25px;
            border-radius: 30px;
            text-decoration: none;
            transition: background-color 0.3s, color 0.3s;
        }

        .btn-login:hover {
            background-color: #3C3A3D;
            color: #82A69C;
        }

        /* Responsive design adjustments */
        @media (max-width: 768px) {
            .success-message {
                padding: 30px 15px;
            }

            .success-message h1 {
                font-size: 28px;
            }

            .btn-login {
                font-size: 16px;
                padding: 8px 20px;
            }
        }
    </style>
</head>
<body>

    <div class="success-message">
        <h1>Success!</h1>
        <p>Your operation was successful.</p>
        <p><c:out value="${message}"></c:out></p>
        <a href="customerlogin" class="btn-login">Login Here</a>
    </div>

</body>
</html>
