<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Register Form</title>
    <%@include file="mainnavebar.jsp" %>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #6a11cb, #2575fc);
            font-family: 'Poppins', sans-serif;
            color: white;
            margin: 0;
            padding: 0;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            max-width: 600px;
            margin: 50px auto;
            color: #333;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
        }

        h3 {
            text-align: center;
            font-size: 26px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        h4 {
            text-align: center;
            font-size: 18px;
            color: #4caf50;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: 600;
            margin-bottom: 8px;
        }

        .form-control {
            width: 100%;
            padding: 12px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 14px;
            color: #333;
            outline: none;
            transition: border-color 0.3s;
        }

        .form-control:focus {
            border-color: #6a11cb;
            box-shadow: 0 0 5px rgba(106, 17, 203, 0.5);
        }

        .form-group input[type="radio"] {
            margin-right: 8px;
        }

        .form-check-label {
            margin-right: 20px;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
        }

        .btn {
            padding: 12px 20px;
            font-size: 16px;
            font-weight: 600;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-success {
            background-color: #28a745;
            color: white;
        }

        .btn-success:hover {
            background-color: #218838;
        }

        .btn-success:active {
            background-color: #1e7e34;
        }

        @media (max-width: 768px) {
            .container {
                padding: 20px;
            }

            .form-group label {
                font-size: 14px;
            }

            .form-control {
                font-size: 12px;
            }

            .btn {
                font-size: 14px;
            }
        }

        .error {
            color: red;
            font-size: 12px;
        }
    </style>
</head>
<body>
    <h3>Customer Register Form</h3>
    <div class="container">
        <h4>${message}</h4>
        <form method="post" action="insertcustomer" onsubmit="return validateForm()">
            <div class="form-group">
                <label for="cname">Enter Name</label>
                <input type="text" id="cname" class="form-control" name="cname" placeholder="Your full name" required>
                <span id="nameError" class="error"></span>
            </div>

            <div class="form-group gender-container">
                <label>Select Gender</label>
                <div>
                    <input type="radio" id="male" name="cgender" class="form-check-input" value="MALE" required>
                    <label for="male" class="form-check-label">Male</label>
                    <input type="radio" id="female" name="cgender" class="form-check-input" value="FEMALE" required>
                    <label for="female" class="form-check-label">Female</label>
                    <input type="radio" id="others" name="cgender" class="form-check-input" value="OTHERS" required>
                    <label for="others" class="form-check-label">Others</label>
                </div>
            </div>

            <div class="form-group">
                <label for="cdob">Select Date of Birth</label>
                <input type="date" id="cdob" class="form-control" name="cdob" required>
            </div>

            <div class="form-group">
                <label for="cemail">Enter Email ID</label>
                <input type="email" id="cemail" class="form-control" name="cemail" placeholder="Your email address" required>
            </div>

            <div class="form-group">
                <label for="cpwd">Enter Password</label>
                <input type="password" id="cpwd" class="form-control" name="cpwd" placeholder="Create a password" required>
            </div>

            <div class="form-group">
                <label for="clocation">Enter Location</label>
                <input type="text" id="clocation" class="form-control" name="clocation" placeholder="City, State" required>
                <span id="locationError" class="error"></span>
            </div>

            <div class="form-group">
                <label for="ccontact">Enter Contact</label>
                <input type="text" id="ccontact" class="form-control" name="ccontact" placeholder="Your phone number" required>
                <span id="contactError" class="error"></span>
            </div>

            <div class="button-container">
                <input type="submit" value="Register" class="btn btn-success">
                <input type="reset" value="Clear" class="btn btn-success">
            </div>
        </form>
    </div>
    <%@include file="footer.jsp" %>
    <script>
        function validateForm() {
            let isValid = true;
            const name = document.getElementById("cname").value;
            const location = document.getElementById("clocation").value;
            const contact = document.getElementById("ccontact").value;

            // Name validation
            if (/\d/.test(name)) {
                document.getElementById("nameError").innerText = "Name cannot contain numbers.";
                isValid = false;
            } else {
                document.getElementById("nameError").innerText = "";
            }

            // Location validation
            if (/\d/.test(location)) {
                document.getElementById("locationError").innerText = "Location cannot contain numbers.";
                isValid = false;
            } else {
                document.getElementById("locationError").innerText = "";
            }

            // Contact validation
            if (!/^\d{10}$/.test(contact)) {
                document.getElementById("contactError").innerText = "Contact must be a 10-digit number.";
                isValid = false;
            } else {
                document.getElementById("contactError").innerText = "";
            }

            return isValid;
        }
    </script>
</body>
</html>