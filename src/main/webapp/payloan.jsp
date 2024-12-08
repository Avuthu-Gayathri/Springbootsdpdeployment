<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pay Loan Amount</title>
    <style>
        /* General styles */
        body {
            background-color: #f4f4f9;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* Form container styling */
        .form-container {
            width: 50%;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        h1 {
            text-align: center;
            color: #007bff;
        }

        /* Input field and button styling */
        label {
            font-size: 16px;
            font-weight: bold;
            margin-top: 10px;
        }

        input[type="text"], input[type="number"], select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        input[type="submit"] {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
            margin-top: 20px;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

        .payment-info {
            margin-top: 20px;
            font-size: 14px;
            color: #666;
            text-align: center;
        }

        /* Success and error message styling */
        .success-message {
            color: #28a745;
            background-color: #e6f4ea;
            padding: 10px;
            border: 1px solid #c3e6cb;
            border-radius: 5px;
            margin-bottom: 20px;
            text-align: center;
        }

        .error-message {
            color: #dc3545;
            background-color: #f8d7da;
            padding: 10px;
            border: 1px solid #f5c6cb;
            border-radius: 5px;
            margin-bottom: 20px;
            text-align: center;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h1>Pay Loan Amount</h1>

    <!-- Show success or error message -->
    <c:if test="${not empty message}">
        <div class="${message == 'Loan payment successful!' ? 'success-message' : 'error-message'}">
            <c:out value="${message}" />
        </div>
    </c:if>

    <form method="post" action="/loans/processLoanPayment">
        <label for="REQUESTId">REQUEST ID:</label>
        <input type="text" id="REQUESTId" name="loanId"
               placeholder="Enter your REQUEST ID"
               value="${loanId != null ? loanId : ''}" required>

        <label for="amount">Amount to Pay:</label>
        <input type="number" id="amount" name="amount"
               placeholder="Enter amount"
               value="${amount != null ? amount : ''}" required>

        <label for="paymentMethod">Payment Method:</label>
        <select id="paymentMethod" name="paymentMethod" required>
            <option value="">Select a payment method</option>
            <option value="creditCard" ${paymentMethod == 'creditCard' ? 'selected' : ''}>Credit Card</option>
            <option value="debitCard" ${paymentMethod == 'debitCard' ? 'selected' : ''}>Debit Card</option>
            <option value="netBanking" ${paymentMethod == 'netBanking' ? 'selected' : ''}>Net Banking</option>
            <option value="upi" ${paymentMethod == 'upi' ? 'selected' : ''}>UPI</option>
        </select>

        <input type="submit" value="Pay Now">
    </form>
    <div class="payment-info">
        Please ensure your payment details are accurate to avoid any delays.
    </div>
</div>

</body>
</html>
