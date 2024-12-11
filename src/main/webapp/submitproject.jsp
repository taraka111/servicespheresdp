<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Submit Work</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #3C3A3D; /* Dark color for text */
        }

        .form-group {
            margin-bottom: 15px;
        }

        input[type="text"], input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border-radius: 4px;
            border: 1px solid #ccc;
            font-size: 16px;
        }

        input[type="text"]:focus {
            outline: none;
            border-color: #82A69C; /* Light green border on focus */
        }

        input[type="submit"] {
            background-color: #82A69C; /* Light green button */
            color: #3C3A3D; /* Dark text color */
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #6B9184; /* Darker green on hover */
        }

        .link {
            display: block;
            text-align: center;
            margin-bottom: 20px;
        }

        .link a {
            background-color: #82A69C; /* Light green button */
            color: #3C3A3D; /* Dark text color */
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 25px;
            transition: background-color 0.3s ease;
        }

        .link a:hover {
            background-color: #6B9184; /* Darker green on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Submit Your Work</h2>
        <form action="/submitwork" method="post">
            <div class="form-group">
                <label for="workdata">GitHub Link:</label>
                <input type="text" id="workdata" name="workdata" placeholder="Submit GitHub link" required>
            </div>
            <input type="hidden" name="id" value="${id}">
            <input type="submit" value="Submit Work">
        </form>
        <div class="link">
            <a href="https://github.com/" target="_blank">Upload Work</a>
        </div>
    </div>
</body>
</html>
