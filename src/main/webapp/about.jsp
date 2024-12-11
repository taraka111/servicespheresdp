<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        /* Global Styling */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #82A69C, #3C3A3D);
            color: #fff;
        }
        
        .header {
            text-align: center;
            padding: 20px 0;
            background-color: #3C3A3D;
            color: #82A69C;
        }

        .container {
            width: 90%;
            max-width: 1200px;
            margin: 30px auto;
            padding: 20px;
            background-color: #3C3A3D;
            border-radius: 8px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }

        .about-section {
            margin-bottom: 30px;
        }

        .about-section h2 {
            color: #82A69C;
            margin-bottom: 15px;
            font-weight: bold;
        }

        .about-section p {
            line-height: 1.8;
            font-size: 16px;
            color: #EDEDED;
        }

        /* Team Section */
        .team {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .team-member {
            flex: 1 1 300px;
            max-width: 300px;
            text-align: center;
            background-color: #82A69C;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 3px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .team-member:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        .team-member img {
            border-radius: 50%;
            width: 120px;
            height: 120px;
            margin-bottom: 15px;
        }

        .team-member h3 {
            margin: 10px 0 5px 0;
            font-size: 18px;
            font-weight: bold;
            color: #3C3A3D;
        }

        .team-member p {
            font-size: 14px;
            font-style: italic;
            color: #2F2F2F;
        }

        /* Footer Styling */
        .footer {
            background-color: #3C3A3D;
            color: #82A69C;
            text-align: center;
            padding: 10px 0;
            margin-top: 30px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .team {
                flex-direction: column;
                align-items: center;
            }
        }
    </style>
</head>
<body>
<%@include file="mainnavebar.jsp" %>

<div class="container">
    <div class="about-section">
        <h2>Our Story</h2>
        <p>Welcome to SERVICE SPHERE, where we bridge the gap between users and professionals. Our platform was established to offer top-tier services to clients while creating meaningful work opportunities for professionals. With a focus on quality and convenience, we’ve grown into a trusted name.</p>
    </div>
    <div class="about-section">
        <h2>Our Mission</h2>
        <p>Our mission is to empower users with easy access to reliable services and provide professionals with a robust platform for showcasing their expertise. We aim to create a seamless, impactful experience for everyone.</p>
    </div>
    <div class="about-section">
        <h2>Meet the Team</h2>
        <div class="team">
            <div class="team-member">
                <img src="https://via.placeholder.com/150" alt="Team Member">
                <h3>Gowtham</h3>
                <p>Founder & CEO</p>
            </div>
            <div class="team-member">
                <img src="https://via.placeholder.com/150" alt="Team Member">
                <h3>Praveen</h3>
                <p>Head of Operations</p>
            </div>
            <div class="team-member">
                <img src="https://via.placeholder.com/150" alt="Team Member">
                <h3>Taraka</h3>
                <p>Marketing Strategist</p>
            </div>
        </div>
    </div>
</div>

<div class="footer">
    <p>&copy; 2024 SERVICE SPHERE. All Rights Reserved.</p>
</div>
</body>
</html>
