<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Loan Request</title>
    <style>
        /* General body styles */
        body {
            background-color: #E8F0F2; /* Light blue-gray background */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full-screen height */
        }

        /* Container styles */
        .container {
            background-color: #FFFFFF; /* White background for the card */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 400px; /* Fixed width for consistency */
        }

        /* Header styles */
        h1 {
            text-align: center;
            color: #2F4050; /* Dark gray-blue */
            margin-bottom: 20px;
            font-size: 24px;
        }

        /* Form styles */
        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-weight: bold;
            margin-bottom: 5px;
            color: #333333; /* Dark text */
        }

        input, select, button {
            padding: 10px;
            font-size: 14px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        /* Button styles */
        button {
            background-color: #1AB394; /* Bright cyan-green */
            color: #FFFFFF; /* White text */
            border: none;
            cursor: pointer;
            font-weight: bold;
            text-transform: uppercase;
        }

        button:hover {
            background-color: #17A085; /* Slightly darker cyan-green */
        }

        /* Message styles */
        .message {
            text-align: center;
            margin-bottom: 15px;
            color: #1AB394; /* Match button color */
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Add Loan Request</h1>

        <!-- Display success or failure message -->
        <c:if test="${not empty message}">
            <div class="message">${message}</div>
        </c:if>

        <!-- Form to add a loan request -->
        <form action="addloanrequest" method="POST">
            <label for="loanType">Loan Type:</label>
            <select id="loanType" name="loanType" required>
                <option value="">-- Select Loan Type --</option>
                <option value="Personal">Personal</option>
                <option value="Education">Education</option>
                <option value="Home">Home</option>
                <option value="Car">Car</option>
            </select>

            <label for="requestedAmount">Requested Amount:</label>
            <input type="number" id="requestedAmount" name="requestedAmount" step="0.01" min="0" required>

            <label for="requestDate">Request Date:</label>
            <input type="date" id="requestDate" name="requestDate" required>

            <label for="dueDate">Due Date:</label>
            <input type="date" id="dueDate" name="dueDate" required>

            <label for="interestRate">Interest Rate (%):</label>
            <input type="number" id="interestRate" name="interestRate" step="0.01" min="0" required>

            <label for="loanTerm">Loan Term (Months):</label>
            <input type="number" id="loanTerm" name="loanTerm" min="1" required>

            <button type="submit">Submit Loan Request</button>
        </form>
    </div>
</body>
</html>
