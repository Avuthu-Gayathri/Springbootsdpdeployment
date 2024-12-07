<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Borrower Profile</title>
    <style>
        /* General body styles */
        body {
            background-color: #eef2f3;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* Center heading style */
        h2 {
            color: #fff;
            text-align: center;
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 20px;
            background-color: #2980b9;
            padding: 15px;
            border-radius: 5px;
        }

        /* Form container styling */
        .form-container {
            width: 40%;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            border: 1px solid #ccc;
        }

        /* Label and input field styling */
        label {
            font-size: 16px;
            color: #333;
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="date"],
        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
            font-size: 14px;
            margin-top: 8px;
            background-color: #f9f9f9;
        }

        /* Button styling */
        button {
            padding: 10px 20px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
            margin-top: 20px;
            transition: background-color 0.3s;
        }

        button:hover {
            opacity: 0.8;
        }

        /* Media query for responsiveness */
        @media (max-width: 768px) {
            .form-container {
                width: 80%;
            }
        }

    </style>
</head>
<body>
    <!-- Navigation bar -->
    <%@ include file="Borrowernavbar.jsp" %>

    <h2>Update Borrower Profile</h2>

    <div class="form-container">
        <form action="updateborrower" method="post">
            <label for="name">Name:</label><br>
            <input type="text" id="name" name="name" value="${borrower.name}" required><br><br>

            <label for="dob">Date of Birth:</label><br>
            <input type="date" id="dob" name="dob" value="${borrower.dob}" required><br><br>

            <label for="email">Email:</label><br>
            <input type="email" id="email" name="email" value="${borrower.email}" readonly><br><br>

            <label for="password">Password:</label><br>
            <input type="password" id="password" name="password" value="${borrower.password}" required><br><br>

            <label for="contactno">Contact Number:</label><br>
            <input type="text" id="contactno" name="contactno" value="${borrower.contactno}" required><br><br>

            <label for="address">Address:</label><br>
            <input type="text" id="address" name="address" value="${borrower.address}" required><br><br>

            <label for="accountNumber">Account Number:</label><br>
            <input type="text" id="accountNumber" name="accountNumber" value="${borrower.accountNumber}" readonly><br><br>

            <label for="accountType">Account Type:</label><br>
            <select id="accountType" name="accountType" required>
                <option value="Saving" ${borrower.accountType == 'Saving' ? 'selected' : ''}>Saving</option>
                <option value="Current" ${borrower.accountType == 'Current' ? 'selected' : ''}>Current</option>
                <option value="Business" ${borrower.accountType == 'Business' ? 'selected' : ''}>Business</option>
            </select><br><br>

            <button type="submit">Update</button>
        </form>
    </div>
</body>
</html>
