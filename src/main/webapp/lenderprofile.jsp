<%@ page import="com.klef.jfsd.springboot.model.Lender"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lender Profile</title>
    <style>
        /* General body styles */
        body {
            background-color: #ECF0F1; /* Light gray background for a soft look */
            font-family: 'Arial', sans-serif;
            color: #333;
            margin: 0;
            padding: 0;
        }

        /* Navbar styles */
        .navbar {
            display: flex;
            justify-content: center;
            background-color: #2C3E50;
            padding: 12px 0;
            position: sticky;
            top: 0;
            z-index: 10;
        }

        .navbar a {
            color: #ecf0f1;
            text-decoration: none;
            padding: 14px 20px;
            font-size: 16px;
            font-weight: bold;
            transition: background-color 0.3s, transform 0.2s;
            border-radius: 5px;
            margin: 0 10px;
        }

        .navbar a:hover {
            background-color: #1ABC9C;
            transform: scale(1.1);
        }

        /* Profile card container */
        .profile-card {
            background-color: #fff;
            width: 60%;
            margin: 40px auto;
            padding: 20px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            text-align: center;
            transition: transform 0.3s ease;
        }

        /* Hover effect for profile card */
        .profile-card:hover {
            transform: translateY(-5px);
        }

        .profile-card h3 {
            font-size: 24px;
            color: #2C3E50;
            margin-bottom: 20px;
            font-weight: bold;
            text-transform: uppercase;
        }

        /* Profile details styling */
        .profile-details {
            font-size: 16px;
            line-height: 1.8;
            color: #555;
            text-align: left;
            margin-top: 20px;
        }

        .profile-details b {
            color: #1ABC9C;
        }

        /* Styling for heading */
        h3 {
            text-align: center;
            font-size: 28px;
            color: #2C3E50;
            font-weight: bold;
            margin-top: 20px;
            text-transform: uppercase;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .profile-card {
                width: 80%;
            }

            .navbar {
                flex-direction: column;
                align-items: center;
            }

            .navbar a {
                margin: 10px 0;
                font-size: 18px;
            }

            .profile-details {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>

<!-- Navbar Include -->
<%@ include file="lendernavbar.jsp" %>

<!-- Page Heading -->
<h3><u>My Profile</u></h3>

<!-- Profile Card Section -->
<div class="profile-card">
    <h3>${lender.name}</h3>  <!-- Display Lender's Name -->
    <div class="profile-details">
        <b>ID:</b> ${lender.id}<br>
        <b>Name:</b> ${lender.name}<br>
        <b>Date of Birth:</b> ${lender.dob}<br>
        <b>Email:</b> ${lender.email}<br>
        <b>Contact Number:</b> ${lender.contactno}<br>
        <b>Address:</b> ${lender.address}<br>
    </div>
</div>

</body>
</html>
