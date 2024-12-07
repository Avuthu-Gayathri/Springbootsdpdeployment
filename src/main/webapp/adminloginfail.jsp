<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login Fail</title>
    <style>
        /* General body styles */
        body {
            background-color: #ffe6e6; /* Soft red background */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        /* Message styles */
        .message {
            background-color: #ffffff;
            border: 2px solid #ff4d4d; /* Red border */
            color: #ff4d4d; /* Red text */
            padding: 20px;
            border-radius: 10px;
            font-size: 18px;
            font-weight: bold;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            text-align: center;
        }

        /* Link styles */
        a {
            text-decoration: none;
            color: #ffffff;
            background-color: #007bff; /* Blue background */
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <div class="message">
        <c:out value="${message}"></c:out>
    </div>
    <a href="adminlogin">Try Again</a>
</body>
</html>
