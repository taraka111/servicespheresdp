<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Customers</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .content {
            margin-top: 50px;
        }
        .table-container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .table th {
            background-color: #007bff;
            color: white;
        }
        .table td {
            vertical-align: middle;
        }
        .btn {
            margin: 3px;
        }
    </style>
</head>
<body>
    <%@ include file="adminnavebar.jsp" %>

    <div class="container content">
        <!-- Total Customers -->
        <div class="text-center mb-4">
            <c:if test="${count != null}">
                <h2 class="text-primary">Total Customers: <span class="badge bg-success"><c:out value="${count}" /></span></h2>
            </c:if>
        </div>

        <!-- Customer Table -->
        <div class="table-container">
            <h3 class="text-center text-primary mb-4">View All Customers</h3>
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover">
                    <thead class="text-center">
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Gender</th>
                            <th>Date of Birth</th>
                            <th>Email</th>
                            <th>Location</th>
                            <th>Contact Number</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${customerlist}" var="customer">
                            <tr>
                                <td class="text-center"><c:out value="${customer.id}" /></td>
                                <td><c:out value="${customer.name}" /></td>
                                <td class="text-center"><c:out value="${customer.gender}" /></td>
                                <td><c:out value="${customer.dateofbirth}" /></td>
                                <td><c:out value="${customer.email}" /></td>
                                <td><c:out value="${customer.location}" /></td>
                                <td class="text-center"><c:out value="${customer.contact}" /></td>
                                <td class="text-center">
                                    <a href="editCustomer?id=<c:out value='${customer.id}' />" class="btn btn-warning btn-sm">Edit</a>
                                    <a href="deleteCustomer?id=<c:out value='${customer.id}' />" class="btn btn-danger btn-sm" 
                                       onclick="return confirm('Are you sure you want to delete this customer?');">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <c:if test="${empty customerlist}">
                <p class="text-center text-muted">No customers found.</p>
            </c:if>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
