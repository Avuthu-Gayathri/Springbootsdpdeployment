<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <style>
        /* General body styles */
        body {
            background-color: #f4f8fb;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* Header style */
        h1 {
            font-size: 32px;
            color: #2c3e50;
            text-align: center;
            margin-top: 50px;
        }

        /* Navigation Bar inclusion from another file */
        @import url('mainnavbar.css');

        /* Ordered list styles */
        ol {
            font-size: 20px;
            padding: 20px;
            text-align: center;
            background-color: #ffffff;
            color: #333;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 50px auto;
            width: 70%;
            border-radius: 8px;
        }

        /* Bold text style for welcome message */
        ol b {
            font-size: 24px;
            color: #16a085;
            font-weight: bold;
        }

        /* Footer style */
        footer {
            text-align: center;
            padding: 15px;
            background-color: #2c3e50;
            color: white;
            margin-top: 50px;
        }

        /* Media query for responsive design */
        @media (max-width: 768px) {
            ol {
                width: 90%;
                padding: 15px;
            }

            h1 {
                font-size: 28px;
            }
        }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>
    <h1>Welcome to Loan Management System</h1>
    <ol>
        <b>Welcome to Loan Management System</b>
    </ol>

    <!-- Optional Footer -->
    <footer>
        <p>&copy; 2024 Loan Management System. All Rights Reserved.</p>
    </footer>
</body>
</html>