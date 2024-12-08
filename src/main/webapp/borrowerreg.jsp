<!DOCTYPE html>
<html>
<head>
    <title>Borrower Registration</title>
    <style>
        /* General body styles */
        body {
           background: url('https://as2.ftcdn.net/v2/jpg/05/45/38/83/1000_F_545388364_5FiamwYi5d9CzNHqBohM9xGloeSyylzV.jpg') no-repeat center center fixed;
           font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
            background-size: cover; /* Ensure background covers the screen */
        }

        /* Center heading style with white text color */
        h3 {
            color: #fff;
            text-align: center;
            font-size: 26px;
            font-weight: bold;
            margin-bottom: 30px;
            background-color: #3b7dda;
            padding: 10px;
            border-radius: 5px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        /* Form container styling */
        .form-container {
            width: 40%;
            margin: 40px auto;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent background for the form */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        /* Table styles */
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.7); /* Transparent background for the table */
        }

        td {
            padding: 12px 10px;
            vertical-align: middle;
        }

        /* Label styles */
        label {
            font-size: 16px;
            color: #555;
            font-weight: 600;
        }

        /* Input fields styles */
        input[type="text"],
        input[type="date"],
        input[type="number"],
        input[type="email"],
        input[type="password"],
        textarea,
        select {
            width: 100%;
            padding: 10px;
            border: 2px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
            margin-top: 6px;
            background-color: #f9f9f9;
            transition: border-color 0.3s ease;
        }

        /* Focus effect on input fields */
        input:focus,
        textarea:focus,
        select:focus {
            border-color: #3b7dda;
            outline: none;
        }

        /* Button container styling */
        .button-container {
            text-align: center;
        }

        input[type="submit"],
        input[type="reset"] {
            padding: 10px 20px;
            background-color: #3b7dda;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
            margin-right: 12px;
            margin-top: 20px;
        }

        input[type="reset"] {
            background-color: #e74c3c;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #1e5bb0;
            opacity: 0.8;
        }

        input[type="reset"]:hover {
            background-color: #c0392b;
        }

        /* Media query for responsiveness */
        @media (max-width: 768px) {
            .form-container {
                width: 80%;
            }

            h3 {
                font-size: 22px;
            }
        }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>
    <h3><u>Borrower Registration</u></h3>
    <div class="form-container">
        <form method="post" action="insertborrower">
            <table>
                <tr>
                    <td><label for="bname">Enter Name</label></td>
                    <td><input type="text" id="bname" name="bname" required/></td>
                </tr>
                <tr>
                    <td><label for="bdob">Enter Date of Birth</label></td>
                    <td><input type="date" id="bdob" name="bdob" required/></td>
                </tr>
                <tr>
                    <td><label for="bemail">Enter Email ID</label></td>
                    <td><input type="email" id="bemail" name="bemail" required/></td>
                </tr>
                <tr>
                    <td><label for="bpwd">Enter Password</label></td>
                    <td><input type="password" id="bpwd" name="bpwd" required/></td>
                </tr>
                <tr>
                    <td><label for="bcontactno">Enter Contact Number</label></td>
                    <td><input type="number" id="bcontactno" name="bcontactno" required/></td>
                </tr>
                <tr>
                    <td><label for="baddress">Enter Address</label></td>
                    <td><textarea id="baddress" name="baddress" required></textarea></td>
                </tr>
                <tr>
                    <td><label for="baccountnumber">Enter Account Number</label></td>
                    <td><input type="text" id="baccountnumber" name="baccountnumber" required/></td>
                </tr>
                <tr>
                    <td><label for="baccounttype">Select Account Type</label></td>
                    <td>
                        <select id="baccounttype" name="baccounttype" required>
                            <option value="Savings">Savings</option>
                            <option value="Current">Current</option>
                            <option value="Business">Business</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
