<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Home</title>
    <style>
        /* General styles for the page */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #333; /* Dark text color */
        }

        /* Overlay container for transparency */
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Adds depth */
        }

        /* Navbar styles */
        .navbar {
            background-color: #004085; /* Dark blue */
            color: white;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .navbar a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            margin-left: 15px;
        }

        .navbar a:hover {
            text-decoration: underline;
        }

        /* Content section */
        .content {
            margin-top: 30px;
            padding: 20px;
            text-align: center;
        }

        /* Heading styles */
        h1 {
            color: #004085; /* Dark blue */
            font-size: 28px;
            margin-bottom: 20px;
        }

        /* Paragraph styles */
        p {
            font-size: 18px;
            margin-bottom: 10px;
        }

        /* Span for dynamic count */
        .count {
            font-weight: bold;
            color: #17a2b8; /* Teal */
            font-size: 20px;
        }
    </style>
</head>
<body style="background-image: url('C:\Users\gayat\OneDrive\Desktop\JFSD\WOEKSPACE\LoanManagementSystem1\src\main\webapp\background.jpeg'); background-size: cover; background-position: center; background-repeat: no-repeat;">
    <div class="container">
        <%@include file="adminnavbar.jsp" %>
        <div class="content">
            <h1>Welcome to Admin Dashboard</h1>
            <p style="color: black;">Total Lenders & Borrowers: 6<span class="count"><c:out value="${count}"></c:out></span></p>
        </div>
    </div>
</body>
</html>
