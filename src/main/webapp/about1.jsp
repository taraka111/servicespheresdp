<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="customernavbar.jsp" %>
<title>About Us</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #3C3A3D; /* Darker background color */
        color: #FFFFFF; /* Light text color for better contrast */
    }
    .header {
        background-color: #82A69C; /* Lighter color for header */
        color: white;
        padding: 10px 0;
        text-align: center;
    }
    .container {
        width: 80%;
        margin: 20px auto;
        padding: 20px;
        background-color: #ffffff; /* White background for content */
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .about-section {
        margin-bottom: 20px;
    }
    .about-section h2 {
        color: #82A69C; /* Lighter color for section headings */
        margin-bottom: 10px;
    }
    .about-section p {
        line-height: 1.6;
        color: #ffffff; /* White text for paragraphs */
    }
    .team {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-around;
    }
    .team-member {
        flex: 1 1 300px;
        margin: 10px;
        text-align: center;
    }
    .team-member img {
        border-radius: 50%;
        width: 150px;
        height: 150px;
    }
    .team-member h3 {
        margin: 10px 0 5px 0;
        color: #82A69C; /* Lighter color for team member names */
    }
    .team-member p {
        font-style: italic;
        color: #ffffff; /* White text for job titles */
    }
</style>
</head>
<body>
<div class="header">
    <h1>About Us</h1>
</div>
<div class="container">
    <div class="about-section">
        <h2>Our Story</h2>
        <p>Welcome to Foody, where we bring you the best culinary experiences. Our journey started in 2010 with a passion for food and a mission to bring diverse flavors to your table. From humble beginnings, we have grown into a team of dedicated professionals committed to delivering high-quality, delicious meals to our customers.</p>
    </div>
    <div class="about-section">
        <h2>Our Mission</h2>
        <p>Our mission is to provide our customers with exceptional food experiences by using the finest ingredients, innovative recipes, and a commitment to quality. We strive to create memorable dining moments for every occasion.</p>
    </div>
    <div class="about-section">
        <h2>Meet the Team</h2>
        <div class="team">
            <div class="team-member">
                <img src="" alt="Member 1">
                <h3>Indhu</h3>
                <p>Founder & CEO</p>
            </div>
            <div class="team-member">
                <img src="" alt="Member 2">
                <h3>Mukundan</h3>
                <p>Head Chef</p>
            </div>
            <div class="team-member">
                <img src="" alt="Member 3">
                <h3>Arsheya</h3>
                <p>Marketing Manager</p>
            </div>
        </div>
    </div>
</div>
</body>
</html>
