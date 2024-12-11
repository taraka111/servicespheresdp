<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Customer</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <script>
        // Client-side validation for form submission
        function validateForm() {
            const name = document.getElementById('name').value;
            const email = document.getElementById('email').value;
            const contact = document.getElementById('contact').value;

            // Simple validation for empty fields and valid contact number
            if (!name || !email || !contact) {
                alert("All fields are required.");
                return false;
            }

            const contactPattern = /^[0-9]{10}$/; // Simple contact number validation for 10 digits
            if (!contact.match(contactPattern)) {
                alert("Please enter a valid 10-digit contact number.");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
    <%@ include file="adminnavebar.jsp" %> <!-- Include the navbar for admin -->

    <div class="container mt-5">
        <h2 class="text-center text-primary">Edit Customer</h2>
        <form action="updateCustomer" method="post" onsubmit="return validateForm()">
            <input type="hidden" name="id" value="${customer.id}" />
            
            <!-- Form fields for editing customer details -->
            <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" class="form-control" id="name" name="name" value="${customer.name}" required>
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" value="${customer.email}" required>
            </div>

            <div class="mb-3">
                <label for="location" class="form-label">Location</label>
                <input type="text" class="form-control" id="location" name="location" value="${customer.location}" required>
            </div>

            <div class="mb-3">
                <label for="contact" class="form-label">Contact Number</label>
                <input type="text" class="form-control" id="contact" name="contact" value="${customer.contact}" required>
            </div>

            <!-- Submit button for updating customer -->
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>

    <!-- Optional Bootstrap JS (if needed for form validation or UI interactions) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
