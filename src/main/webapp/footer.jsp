<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Footer</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha384-k6RqeWeci5ZR/Lv4MR0sA0FfDOMBBy0w9XE9GH8cOYxKp1p6sIezf2kGm0q" crossorigin="anonymous">
<style>
    /* Main layout fixes */
    html, body {
        height: 100%;
        margin: 0;
        display: flex;
        flex-direction: column;
    }

    .content {
        flex: 1; /* This ensures the content expands to push the footer down */
    }

    /* Footer styling */
    .footer {
        background-color: #333;
        color: white;
        padding: 98px 98px;
        font-family: Arial, sans-serif;
        position: relative;
    }

    .footer-container {
        display: flex;
        padding: 0px 0px;
        justify-content: space-around;
        flex-wrap: wrap;
    }

    .footer-section {
        flex: 1;
        margin: 10px;
        min-width: 2px;
    }

    .footer-section h2 {
        color: #f39c12;
        margin-bottom: 1px;
    }

    .footer-section ul li {
        margin: 5px 0;
    }

    .footer-section ul li a {
        color: white;
        text-decoration: none;
    }

    .footer-section ul li a:hover {
        text-decoration: underline;
    }

    .social-icons img {
        width: 30px;
        height: 30px;
        margin-right: 10px;
    }

    .footer-bottom {
        text-align: center;
        padding: 0px 0;
        border-top: 1px solid #444;
    }
</style>
</head>
<body>
<div class="footer">
    <div class="footer-container">
        <div class="footer-section">
            <h2>SERVICE SPHERE</h2>
            <p>SITES WHERE WE ARE AVAILABLE IN </p>
            <div class="social-icons">
                <a href="#"><img src="https://upload.wikimedia.org/wikipedia/commons/6/6d/Twitter_icon_%282019%29.svg" alt="Twitter"></a>
                <a href="#"><img src="https://upload.wikimedia.org/wikipedia/commons/5/51/Facebook_f_logo_%282019%29.svg" alt="Facebook"></a>
                <a href="#"><img src="https://upload.wikimedia.org/wikipedia/commons/e/eb/Instagram_logo_2016.svg" alt="Instagram"></a>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <p>&copy; 2024 SERVICE SPHERE. All rights reserved.</p>
    </div>
</div>
</body>
</html>
