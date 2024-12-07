<!DOCTYPE html>
<html>
<head>
    <title>Pay Loan Amount</title>
    <style>
        /* General body styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #1E2A38; /* Dark blue-gray background */
        }

        /* Form container styles */
        .form-container {
            max-width: 400px;
            margin: 50px auto;
            background-color: #ffffff; /* White background */
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); /* Enhanced shadow */
            border: 1px solid #dee2e6; /* Light border */
        }

        h1 {
            text-align: center;
            color: #343a40; /* Dark gray */
            font-size: 24px;
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-size: 14px;
            color: #495057; /* Slightly darker gray */
            margin-bottom: 8px;
            font-weight: 600;
        }

        input[type="text"],
        input[type="number"],
        select {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ced4da; /* Medium gray border */
            border-radius: 8px;
            font-size: 14px;
            transition: all 0.3s;
        }

        input[type="text"]:focus,
        input[type="number"]:focus,
        select:focus {
            border-color: #80bdff; /* Blue border on focus */
            outline: none;
            box-shadow: 0 0 5px rgba(128, 189, 255, 0.5);
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #007bff; /* Blue background */
            color: #ffffff;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #0056b3; /* Darker blue */
        }

        .payment-info {
            font-size: 13px;
            color: #6c757d; /* Light gray text */
            text-align: center;
            margin-top: 10px;
        }

        /* Responsive design */
        @media (max-width: 480px) {
            .form-container {
                padding: 20px;
            }

            h1 {
                font-size: 20px;
            }

            input[type="submit"] {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>

<div class="form-container">
    <h1>Pay Loan Amount</h1>
    <form method="post" action="processLoanPayment">
        <label for="REQUESTId">REQUEST ID:</label>
        <input type="text" id="REQUESTId" name="loanId" placeholder="Enter your REQUEST ID" required>

        <label for="amount">Amount to Pay:</label>
        <input type="number" id="amount" name="amount" placeholder="Enter amount" required>

        <label for="paymentMethod">Payment Method:</label>
        <select id="paymentMethod" name="paymentMethod" required>
            <option value="">Select a payment method</option>
            <option value="creditCard">Credit Card</option>
            <option value="debitCard">Debit Card</option>
            <option value="netBanking">Net Banking</option>
            <option value="upi">UPI</option>
        </select>

        <input type="submit" value="Pay Now">
    </form>
    <div class="payment-info">
        Please ensure your payment details are accurate to avoid any delays.
    </div>
</div>

</body>
</html>
