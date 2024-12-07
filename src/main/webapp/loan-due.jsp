<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loan Due Amount</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 50%;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        .loan-details {
            margin-bottom: 20px;
        }

        .loan-details label {
            font-weight: bold;
        }

        .loan-details p {
            margin: 5px 0;
        }

        .form-group {
            margin-top: 20px;
        }

        .form-group button {
            padding: 10px;
            background-color: #2C3E50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .form-group button:hover {
            background-color: #34495E;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Loan Due Amount</h2>
        <div class="loan-details">
            <label>Requested Amount:</label>
            <p>${requestedAmount}</p>

            <label>Interest Rate:</label>
            <p>${interestRate} %</p>

            <label>Loan Term (in years):</label>
            <p>${loanTerm} years</p>

            <label>Interest Amount:</label>
            <p>${interestAmount}</p>

            <label>Total Due Amount:</label>
            <p>${totalDueAmount}</p>
        </div>

        <div class="form-group">
            <form action="make-payment" method="POST">
                <button type="submit">Make Payment</button>
            </form>
        </div>
    </div>

</body>
</html>
