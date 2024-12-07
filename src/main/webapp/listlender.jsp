<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Lenders</title>
    <style>
        /* General page styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5; /* Light gray background for clean design */
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
        }

        header {
            width: 100%;
            background-color: #2980b9; /* Blue background for header */
            color: #ffffff;
            padding: 15px 0;
            text-align: center;
            font-size: 28px;
            font-weight: bold;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 100;
        }

        .container {
            width: 90%;
            max-width: 1100px;
            margin-top: 90px; /* Adjust for header space */
            padding: 20px;
            text-align: center;
        }

        /* Heading and Button Container */
        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        h1 {
            margin: 0;
            font-size: 30px;
        }

        .add-lender-button {
            background-color: #27ae60; /* Green button */
            color: white;
            padding: 10px 20px;
            border-radius: 6px;
            font-weight: bold;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

        .add-lender-button:hover {
            background-color: #2ecc71; /* Lighter green on hover */
        }

        /* Table styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 30px;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #2980b9; /* Header background color */
            color: white;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #ecf0f1; /* Alternating row colors */
        }

        tr:hover {
            background-color: #bdc3c7; /* Highlight row on hover */
        }

        /* Action buttons styles */
        .view-button, .update-button, .delete-button {
            padding: 8px 16px;
            border-radius: 6px;
            font-weight: bold;
            text-align: center;
            transition: background-color 0.3s ease;
            display: inline-block;
            text-decoration: none;
            margin-right: 10px;
        }

        .view-button {
            background-color: #2980b9;
            color: white;
        }

        .view-button:hover {
            background-color: #1f618d; /* Darker blue on hover */
        }

        .update-button {
            background-color: #f39c12;
            color: white;
        }

        .update-button:hover {
            background-color: #e67e22; /* Orange on hover */
        }

        .delete-button {
            background-color: #e74c3c;
            color: white;
        }

        .delete-button:hover {
            background-color: #c0392b; /* Darker red on hover */
        }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %> <!-- Include navbar file -->
    
    <div class="container">
        <!-- Heading and Add Lender Button -->
        <div class="header-container">
            <h1>All Lenders</h1>
            <a href="${pageContext.request.contextPath}/addlender" class="add-lender-button">Add Lender</a>
        </div>
        
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Date of Birth</th>
                    <th>Email</th>
                    <th>Contact No</th>
                    <th>Address</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <!-- Iterate over the 'lenders' list passed from the controller -->
                <c:forEach var="lender" items="${lenders}">
                    <tr>
                        <td>${lender.id}</td>
                        <td>${lender.name}</td>
                        <td>${lender.dob}</td>
                        <td>${lender.email}</td>
                        <td>${lender.contactNo}</td>
                        <td>${lender.address}</td>
                        <td>
                            <!-- View details button -->
                            <a href="${pageContext.request.contextPath}/viewLender/${lender.id}" class="view-button">View</a>
                            <a href="${pageContext.request.contextPath}/updateLender/${lender.id}" class="update-button">Update</a>
                            <a href="${pageContext.request.contextPath}/deleteLender/${lender.id}" class="delete-button">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
