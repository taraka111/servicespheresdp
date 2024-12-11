<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Internship</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa; /* White background for the page */
            color: #495057; /* Dark text for readability */
        }

        .container {
            background-color: #ffffff; /* White background for the form container */
            border-radius: 10px;
            padding: 20px;
            margin-top: 30px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #343a40; /* Dark text for headings */
            font-weight: bold;
        }

        label {
            color: #495057;
            font-weight: 500;
        }

        .form-control, .form-check-input, .btn {
            background-color: #ffffff; /* White background for form elements */
            color: #495057; /* Dark text for input fields */
            border: 1px solid #ced4da; /* Light border for form elements */
        }

        .form-control:focus, .btn:focus {
            outline: none;
            box-shadow: 0 0 8px rgba(0, 123, 255, 0.6);
        }

        .btn {
            background-color: #007bff; /* Blue button color */
            color: #fff;
            font-weight: bold;
            padding: 10px;
            transition: background-color 0.3s ease;
            border-radius: 5px;
            width: 100%;
        }

        .btn:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        .form-check-label, .form-control {
            font-size: 14px;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                padding: 15px;
            }

            h2 {
                font-size: 20px;
            }
        }
    </style>
</head>
<body>
    <div>
        <%@include file="adminnavebar.jsp" %> <!-- Include admin navbar -->
    </div>
    <br>
    <div class="container">
        <h2 class="text-center mb-4">Add New Internship</h2>
        <form action="${pageContext.request.contextPath}/addInternship" method="post">
            <div class="mb-3">
                <label for="title" class="form-label">Internship Title</label>
                <input type="text" id="title" name="title" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="description" class="form-label">Description</label>
                <textarea id="description" name="description" class="form-control" rows="4" required></textarea>
            </div>
            <div class="mb-3">
                <label for="duration" class="form-label">Duration (Weeks)</label>
                <input type="number" id="duration" name="duration" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="stipend" class="form-label">Stipend</label>
                <input type="number" id="stipend" name="stipend" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="skills" class="form-label">Skills</label><br>
                <div>
                    <input type="checkbox" id="skill1" name="skills" value="HTML" class="form-check-input">
                    <label for="skill1" class="form-check-label">HTML</label>
                    <input type="checkbox" id="skill2" name="skills" value="CSS" class="form-check-input">
                    <label for="skill2" class="form-check-label">CSS</label>
                    <input type="checkbox" id="skill3" name="skills" value="JavaScript" class="form-check-input">
                    <label for="skill3" class="form-check-label">JavaScript</label>
                    <input type="checkbox" id="skill4" name="skills" value="Python" class="form-check-input">
                    <label for="skill4" class="form-check-label">Python</label>
                    <input type="checkbox" id="skill5" name="skills" value="Java" class="form-check-input">
                    <label for="skill5" class="form-check-label">Java</label>
                    <input type="checkbox" id="skill6" name="skills" value="Spring" class="form-check-input">
                    <label for="skill6" class="form-check-label">Spring</label>
                    <input type="checkbox" id="skill7" name="skills" value="React" class="form-check-input">
                    <label for="skill7" class="form-check-label">React</label>
                </div>
            </div>
            <div class="mb-3">
                <label for="location" class="form-label">Location</label>
                <input type="text" id="location" name="location" class="form-control" required>
            </div>
            <div class="mb-3">
                <label for="role" class="form-label">Role</label>
                <select id="role" name="role" class="form-control" required>
                    <option value="" disabled selected>Select a role</option>
                    <option value="Developer">Developer</option>
                    <option value="Testing">Testing</option>
                    <option value="Backend">Backend</option>
                    <option value="Frontend">Frontend</option>
                    <option value="HR">HR</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="qualification" class="form-label">Qualification</label>
                <select id="qualification" name="qualification" class="form-control" required>
                    <option value="" disabled selected>Select a Qualification</option>
                    <option value="BTECH">BTECH</option>
                    <option value="MTECH">MTECH</option>
                    <option value="PHD">PHD</option>
                    <option value="PDF">PDF</option>
                    <option value="HR">HR</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="closingdate" class="form-label">Closing Date</label>
                <input type="date" id="closingdate" name="closingdate" class="form-control" required>
            </div>
            <button type="submit" class="btn">Add Internship</button>
        </form>
    </div>
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
