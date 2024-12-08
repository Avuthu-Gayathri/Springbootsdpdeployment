<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lender Login</title>
    <style>
        /* General body styles */
        body {
           background: url('https://www.bluebricks.com.my/wp-content/uploads/2022/11/businessman-shaking-hands-giving-dollar-bills-corruption-bribery-business-manager-deal-contract-1-1024x683.jpg') no-repeat center center fixed;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
        }

        /* Center heading style */
        h3 {
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
            width: 35%;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            border: 1px solid #ccc;
        }

        /* Table styles */
        table {
            width: 100%;
            border-collapse: collapse;
        }

        td {
            padding: 8px;
            text-align: left;
        }

        /* Label styles */
        label {
            font-size: 16px;
            color: #333;
            font-weight: bold;
        }

        /* Input fields styling */
        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
            font-size: 14px;
            margin-top: 8px;
            background-color: #f9f9f9;
        }

        /* Button styles */
        .button-container {
            text-align: center;
            margin-top: 20px;
        }

        input[type="submit"],
        input[type="reset"] {
            padding: 10px 20px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            margin-right: 10px;
            transition: background-color 0.3s;
        }

        input[type="reset"] {
            background-color: #dc3545;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            opacity: 0.8;
        }

        /* Error message styling */
        h4 {
            text-align: center;
            color: red;
            font-size: 18px;
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
    <%@ include file="mainnavbar.jsp" %>

    <h4>
        <c:out value="${message}"></c:out>
    </h4>

    <h3><u>Lender Login</u></h3>
    
    <div class="form-container">
        <form method="post" action="checklenderlogin">
            <table>
                <tr>
                    <td><label for="lemail">Enter Email ID</label></td>
                    <td><input type="email" id="lemail" name="lemail" required/></td>
                </tr>
                <tr>
                    <td><label for="lpwd">Enter Password</label></td>
                    <td><input type="password" id="lpwd" name="lpwd" required/></td>
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
