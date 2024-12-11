<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Internship</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%@ include file="adminnavebar.jsp" %><br/>

<div class="container">
    <h2 class="text-center mb-4">Edit Internship</h2>
    <form action="/updateinternshipdata" method="post">
        
        <!-- Hidden Internship ID -->
        <div class="mb-3">
            <label for="ramid" class="form-label">Internship ID</label>
            <input type="number" readonly="readonly" id="ramid" name="ramid" value="${internship.id}" class="form-control" required>
        </div>

        <!-- Internship Title -->
        <div class="mb-3">
            <label for="title" class="form-label">Internship Title</label>
            <input type="text" id="title" name="title" value="${internship.title}" class="form-control" required>
        </div>

        <!-- Description -->
        <div class="mb-3">
            <label for="description" class="form-label">Description</label>
            <textarea id="description" name="description" class="form-control" rows="4" required>${internship.description}</textarea>
        </div>

        <!-- Duration -->
        <div class="mb-3">
            <label for="duration" class="form-label">Duration (in months)</label>
            <input type="number" id="duration" name="duration" value="${internship.duration}" class="form-control" required>
        </div>

        <!-- Stipend -->
        <div class="mb-3">
            <label for="stipend" class="form-label">Stipend (INR)</label>
            <input type="number" id="stipend" name="stipend" value="${internship.stipend}" class="form-control" required>
        </div>

        <!-- Submit Button -->
        <button type="submit" class="btn btn-primary w-100">Update Internship</button>
    </form>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
