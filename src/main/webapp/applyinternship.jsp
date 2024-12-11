<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<%@include file="customernavbar.jsp" %> <!-- Include customer navbar -->

<div class="container mt-4">
    <h2 class="text-center mb-4">Available Internships</h2>
    <h4 align="center">${msg}</h4>
    
    <!-- Check if internships are available -->
    <c:choose>
        <c:when test="${not empty internships}">
            <div class="row">
                <c:forEach var="internship" items="${internships}">
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">${internship.title}</h5>
                                <p class="card-text text-truncate">${internship.description}</p>
                                <p class="card-text"><strong>Duration:</strong> ${internship.duration}</p>
                                <p class="card-text"><strong>Stipend:</strong> ${internship.stipend}</p>
                                <p class="card-text"><strong>Closing date:</strong> ${internship.closingdate}</p>
                                
                                <!-- Apply button with onclick to show modal -->
                                <a href="javascript:void(0);" class="btn btn-primary w-100" onclick="showApplyModal(${internship.id})">Apply</a><br/>
                            </div>
                        </div>
                    </div>

                    <!-- Modal for applying to internship -->
                    <div id="applyModal${internship.id}" class="apply-modal" style="display:none; position:fixed; top:0; left:0; width:100%; height:100%; background-color: rgba(0, 0, 0, 0.5); z-index:1000; justify-content: center; align-items: center;">
                        <div style="background-color:white; padding:20px; border-radius:5px; width:300px; text-align:center;">
                            <h4>Apply for Internship</h4>
                            <form action="applyinternship" method="get">
                            <label for="applicationMessage">Enter a message (optional):</label><br/>
                            <input type="text" name="id" hidden="" value="${internship.id}" />
                            <textarea id="applicationMessage${internship.id}" name="datalink" rows="4" cols="30"></textarea><br/><br/>
                            <button onclick="submitApplication(${internship.id})">Submit</button>
                            <button onclick="closeModal(${internship.id})">Cancel</button>
                            </form>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </c:when>
        <c:otherwise>
            <div class="text-center">
                <p>No internships available at the moment.</p>
            </div>
        </c:otherwise>
    </c:choose>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
    function showApplyModal(internshipId) {
        document.getElementById('applyModal' + internshipId).style.display = 'flex';
    }

    function closeModal(internshipId) {
        document.getElementById('applyModal' + internshipId).style.display = 'none';
    }

    function submitApplication(internshipId) {
        var message = document.getElementById('applicationMessage' + internshipId).value;

        if (message.trim() === '') {
            alert('Please enter a message before submitting.');
        } else {
            closeModal(internshipId);
        }
    }
</script>
</body>
</html>