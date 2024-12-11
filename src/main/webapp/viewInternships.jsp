<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Internships</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .card {
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;
            margin-bottom: 20px;
        }

        .card:hover {
            transform: scale(1.03);
        }

        .card-title {
            font-size: 18px;
            font-weight: bold;
        }

        .btn {
            border-radius: 20px;
        }
    </style>
</head>
<body>
    <%@include file="adminnavebar.jsp"%> <!-- Include customer navbar -->

    <div class="container mt-4">
        <h2 class="text-center mb-4">Available Internships</h2>
        <h4 align="center">${msg}</h4>

        <!-- Check if internships are available -->
        <c:choose>
            <c:when test="${not empty internships}">
                <div class="row">
                    <c:forEach var="internship" items="${internships}">
                        <div class="col-md-4 col-sm-6 col-lg-3">
                            <div class="card">
                                <div class="card-body">
                                    <h5 class="card-title">${internship.title}</h5>
                                    <p class="card-text text-truncate">${internship.description}</p>
                                    <p class="card-text"><strong>Duration:</strong> ${internship.duration}</p>
                                    <p class="card-text"><strong>Stipend:</strong> ${internship.stipend}</p>
                                    <a href="/editinternship?id=${internship.id}" class="btn btn-primary w-100">Edit</a><br />
                                    <a href="/deleteinternship?id=${internship.id}" class="btn btn-danger w-100" onclick="return confirm('Are you sure you want to delete this internship?');">Delete</a>
                                </div>
                            </div>
                        </div>                                                                                    
                    </c:forEach>
                </div>
            </c:when>
            <c:otherwise>
                <div class="text-center alert alert-warning">
                    <p>No internships available at the moment.</p>
                </div>
            </c:otherwise>
        </c:choose>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
