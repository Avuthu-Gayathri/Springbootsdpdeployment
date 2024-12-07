<%@ page import="com.klef.jfsd.springboot.model.Borrower" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Borrower Profile</title>
    <style>
        /* General body styles */
        body {
            background-color: #1E2A38; /* Dark blue-gray background */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #F0F0F0;
            margin: 0;
            padding: 0;
        }

        /* Centered heading styles */
        h3 {
            text-align: center;
            color: #4CD3C2; /* Bright cyan */
            margin-top: 20px;
            font-size: 28px;
            text-decoration: underline;
        }

        /* Profile card styles */
        .profile-card {
            max-width: 600px;
            margin: 40px auto;
            background-color: #273B4F; /* Deep navy blue */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }

        .profile-card h3 {
            text-align: center;
            color: #FFFFFF; /* White text */
            margin-bottom: 20px;
        }

        .profile-details {
            font-size: 16px;
            line-height: 1.6;
        }

        .profile-details b {
            color: #4CD3C2; /* Bright cyan */
        }
    </style>
</head>
<body>

<!-- Navbar Include (Assuming you have a separate file for the navbar) -->
<%@ include file="Borrowernavbar.jsp" %>

<h3><u>My Profile</u></h3>

<!-- Profile Card Section -->
<div class="profile-card">
    <h3>${borrower.name}</h3>  <!-- Display Borrower's Name -->
    <div class="profile-details">
        <%-- <b>ID:</b> ${borrower.id}<br> --%>
        <b>Name:</b> ${borrower.name}<br>
        <b>Date of Birth:</b> ${borrower.dob}<br>
        <b>Email:</b> ${borrower.email}<br>
        <b>Contact Number:</b> ${borrower.contactno}<br>
        <b>Address:</b> ${borrower.address}<br>
        <b>Account Number:</b> ${borrower.accountNumber}<br> <!-- Added account number -->
        <b>Account Type:</b> ${borrower.accountType}<br> <!-- Added account type -->
    </div>
</div>

</body>
</html>
