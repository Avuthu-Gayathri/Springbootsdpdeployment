<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loan Calculation</title>
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

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            font-weight: bold;
        }

        .form-group input {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }

        .form-group button {
            width: 100%;
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
        <h2>Loan Calculation</h2>
        <form action="calculate-loan" method="POST">
            <div class="form-group">
                <label for="requestedAmount">Requested Amount</label>
                <input type="number" id="requestedAmount" name="requestedAmount" required>
            </div>
            <div class="form-group">
                <label for="interestRate">Interest Rate (%)</label>
                <input type="number" id="interestRate" name="interestRate" required>
            </div>
            <div class="form-group">
                <label for="loanTerm">Loan Term (in years)</label>
                <input type="number" id="loanTerm" name="loanTerm" required>
            </div>
            <div class="form-group">
                <button type="submit">Calculate Loan</button>
            </div>
        </form>
    </div>

</body>
</html>
