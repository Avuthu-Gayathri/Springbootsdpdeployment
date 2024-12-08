<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="mainnavbar.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lender Registration</title>
    <style>
        /* General body styles */
        body {
           background: url('https://www.banastech.com/wp-content/uploads/2021/04/loan-management-system-key-benefits-scaled-e1618677879151.jpg') no-repeat center center fixed;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
            background-size: cover; /* Ensure the background covers the screen */
        }

        /* Header styles */
        h3 {
            text-align: center;
            font-size: 28px;
            font-weight: bold;
            color: #2C3E50;
            margin-top: 30px;
            text-transform: uppercase;
        }

        /* Form container styling */
        .form-container {
            width: 40%;
            margin: 40px auto;
            background-color: rgba(255, 255, 255, 0.7); /* Semi-transparent background */
            padding: 20px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        /* Table layout for form */
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.7); /* Transparent background for the table */
        }

        td {
            padding: 10px;
        }

        /* Label styles */
        label {
            font-size: 16px;
            color: #333;
            font-weight: bold;
        }

        /* Input field styles */
        input[type="text"],
        input[type="date"],
        input[type="number"],
        input[type="email"],
        input[type="password"],
        textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 14px;
            margin-top: 6px;
        }

        /* Textarea field styles */
        textarea {
            height: 100px;
        }

        /* Button container styling */
        .button-container {
            text-align: center;
        }

        input[type="submit"],
        input[type="reset"] {
            padding: 10px 20px;
            background-color: #3498DB;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin: 10px 5px;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #1ABC9C;
        }

        /* Responsive design for smaller screens */
        @media (max-width: 768px) {
            .form-container {
                width: 80%; /* Make form container larger on smaller screens */
            }
        }
    </style>
</head>
<body>

    <!-- Page heading -->
    <h3><u>Lender Registration</u></h3>

    <!-- Registration form container -->
    <div class="form-container">
        <form method="post" action="insertlender">
            <table>
                <tr>
                    <td><label for="lname">Enter Name</label></td>
                    <td><input type="text" id="lname" name="lname" required /></td>
                </tr>
                <tr>
                    <td><label for="ldob">Enter Date of Birth</label></td>
                    <td><input type="date" id="ldob" name="ldob" required /></td>
                </tr>
                <tr>
                    <td><label for="lemail">Enter Email ID</label></td>
                    <td><input type="email" id="lemail" name="lemail" required /></td>
                </tr>
                <tr>
                    <td><label for="lpwd">Enter Password</label></td>
                    <td><input type="password" id="lpwd" name="lpwd" required /></td>
                </tr>
                <tr>
                    <td><label for="lcontactno">Enter Contact Number</label></td>
                    <td><input type="number" id="lcontactno" name="lcontactno" required /></td>
                </tr>
                <tr>
                    <td><label for="laddress">Enter Address</label></td>
                    <td><textarea id="laddress" name="laddress" required></textarea></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register" />
                        <input type="reset" value="Clear" />
                    </td>
                </tr>
            </table>
        </form>
    </div>

</body>
</html>
