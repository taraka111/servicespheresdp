<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
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
    <%@include file="adminnavebar.jsp" %>

    <div class="container content">
        <!-- Submissions Table -->
        <div class="table-container">
            <h3 class="text-center text-primary mb-4">View All Submissions</h3>
            <table class="table table-striped table-bordered table-hover">
                <thead class="text-center">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Title</th>
                        <th>Status</th>
                        <th>Submission Date</th>
                        <th>Stipend</th>
                        <th>Closing</th>
                        <th>Actions</th>
                        <th>Approve</th>
                        <th>Reject</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${submissions}" var="customer">
                        <tr>
                            <td class="text-center"><c:out value="${customer.id}" /></td>
                            <td><c:out value="${customer.applyIntenships.customer.name}" /></td>
                            <td><c:out value="${customer.applyIntenships.internship.title}" /></td>
                            <td><c:out value="${customer.submissionstatus}" /></td>
                            <td><c:out value="${customer.submitdate}" /></td>
                            <td><c:out value="${customer.applyIntenships.internship.stipend}" /></td>
                            <td class="text-center"><c:out value="${customer.applyIntenships.internship.closingdate}" /></td>
                            <td class="text-center">
                                <c:if test="${not empty customer.submissiondata}">
                                    <a href="${customer.submissiondata}" target="_blank" class="btn btn-danger btn-sm">Submission</a>
                                </c:if>
                            </td>
                            <td class="text-center">
                                <a href="updatesubmissionstatus?id=<c:out value='${customer.id}' />&status=Approve" class="btn btn-success btn-sm" onclick="return confirm('Are you sure you want to approve this submission?');">Approve</a>
                            </td>
                            <td class="text-center">
                                <a href="updatesubmissionstatus?id=<c:out value='${customer.id}' />&status=Reject" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to reject this submission?');">Reject</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <c:if test="${empty submissions}">
                <div class="text-center alert alert-warning">
                    <p>No submissions found.</p>
                </div>
            </c:if>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
