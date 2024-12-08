<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <style>
        /* General body styles */
        body {
            background: url('https://www.cashe.co.in/wp-content/uploads/2023/11/RiRgcYL2-Loan_Terms.png') no-repeat center center fixed; /* Set background image */
            background-size: cover; /* Make it cover the entire page */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
        }

        /* Center heading style with a bold color */
        h3 {
            color: #004085; /* Dark blue text color */
            text-align: center;
            font-size: 26px;
            margin-bottom: 20px;
        }

        /* Form container styling */
        .form-container {
            width: 35%; /* Moderate width */
            margin: 40px auto;
            background-color: rgba(255, 255, 255, 0.9); /* Slightly transparent white background */
            padding: 20px; /* Ample padding for a spacious look */
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15); /* Enhanced shadow */
            border-radius: 12px;
            border: 1px solid #b8daff; /* Light border */
        }

        /* Table styles */
        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 10px; /* Comfortable padding */
        }

        /* Label styles */
        label {
            font-size: 15px;
            color: #004085; /* Dark blue color */
            font-weight: bold;
        }

        /* Input fields styles */
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 8px; /* Ample padding */
            border: 1px solid #b8daff;
            border-radius: 6px;
            box-sizing: border-box;
            font-size: 14px;
            margin-top: 6px;
        }

        /* Button container styling */
        .button-container {
            text-align: center;
        }

        input[type="submit"],
        input[type="reset"] {
            padding: 8px 16px;
            background-color: #17a2b8; /* Teal color */
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 14px;
            margin-right: 12px;
            transition: background-color 0.3s;
        }

        input[type="reset"] {
            background-color: #d9534f; /* Red color */
        }

        input[type="submit"]:hover {
            background-color: #138496; /* Darker teal */
        }

        input[type="reset"]:hover {
            background-color: #c9302c; /* Darker red */
        }

        /* Media query for responsiveness */
        @media (max-width: 768px) {
            .form-container {
                width: 90%; /* Wider for smaller screens */
            }
        }
    </style>
</head>
<body>
  <%@include file="mainnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Admin Login</u></h3>
    <div class="form-container">
        <form method="post" action="checkadminlogin">
            <table>
                <tr>
                    <td><label for="auname">Enter Username</label></td>
                    <td><input type="text" id="auname" name="auname" required/></td>
                </tr>
                 <tr>
                    <td><label for="apwd">Enter Password</label></td>
                    <td><input type="password" id="apwd" name="apwd" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>