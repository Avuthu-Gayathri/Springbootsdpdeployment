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
            background: url('https://www.shutterstock.com/shutterstock/photos/2312920449/display_1500/stock-photo-technology-and-business-finance-concept-businessman-touching-icon-online-banking-and-icon-network-2312920449.jpg') no-repeat center center fixed; /* Set background image */
            background-size: cover; /* Make it cover the entire page */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
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
            margin: 170px auto;
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
            padding: 75px;
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
   <h1 style="color: white;">Loan Wolves</h1>

    <ol>
        <b>Welcome to Loan Management System</b>
    </ol>

    <!-- Optional Footer -->
    
</body>
</html>