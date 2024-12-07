<%@ page import="com.klef.jfsd.springboot.model.Lender"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lender Home</title>
    <style>
        /* General body styles */
        body {
            background-color: #f4f7fb;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* Header style */
        h1 {
            font-size: 30px;
            color: #34495e;
            text-align: center;
            margin-top: 50px;
            font-weight: bold;
        }

        /* Navigation bar inclusion */
        @import url('lendernavbar.css');  /* Ensure this CSS file exists for navbar styles */

        /* Style for the welcome message */
        .welcome-message {
            background-color: #fff;
            color: #2980b9;
            font-size: 24px;
            text-align: center;
            padding: 15px;
            margin: 40px auto;
            width: 60%;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        /* Style for footer */
        footer {
            text-align: center;
            padding: 15px;
            background-color: #34495e;
            color: white;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        /* Media query for responsiveness */
        @media (max-width: 768px) {
            h1 {
                font-size: 24px;
            }

            .welcome-message {
                width: 80%;
                padding: 12px;
            }
        }
    </style>
</head>
<body>
    <%@ include file="lendernavbar.jsp" %>

    <div class="welcome-message">
        <h1>Welcome, ${lender.name}</h1> <!-- Access lender name directly from the model -->
    </div>

    <!-- Optional footer -->
    <footer>
        <p>&copy; 2024 Loan Management System | All Rights Reserved</p>
    </footer>
</body>
</html>
