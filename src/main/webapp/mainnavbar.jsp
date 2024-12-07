<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Boot</title>
    <style>
        /* General body styles */
        body {
            background-color: #ecf0f1;  /* Light gray background */
            font-family: 'Arial', sans-serif;
            color: #2c3e50;  /* Dark text color */
            margin: 0;
            padding: 0;
            min-height: 100vh;
        }

        /* Centered heading styles */
        h2 {
            color: #27ae60;  /* Green color for heading */
            margin-top: 50px;
            text-align: center;
            font-size: 28px;
            font-weight: bold;
        }

        /* Navigation bar styles */
        .navbar {
            display: flex;
            justify-content: center;
            background-color: #34495e;  /* Dark grayish blue */
            padding: 15px 0;
            position: sticky;
            top: 0;
            z-index: 10;
        }

        .navbar a {
            color: #ecf0f1;  /* Light text color */
            text-decoration: none;
            padding: 14px 25px;
            font-size: 18px;
            font-weight: bold;
            margin: 0 10px;
            border-radius: 8px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .navbar a:hover {
            background-color: #e67e22;  /* Orange background on hover */
            transform: scale(1.1);  /* Slight scaling effect */
        }

        /* Additional padding for the body */
        body {
            padding-bottom: 20px;
        }

        /* Media queries for responsiveness */
        @media (max-width: 768px) {
            .navbar {
                flex-direction: column;
            }

            .navbar a {
                padding: 12px 20px;
                font-size: 16px;
            }
        }

    </style>
</head>
<body>
    
    <div class="navbar">
        <a href="/">Home</a>
        <a href="lenderreg">Lender Registration</a>
        <a href="lenderlogin">Lender Login</a>
        <a href="borrowerlogin">Borrower Login</a>
        <a href="borrowerreg">Borrower Registration</a>
        <a href="adminlogin">Admin Login</a>
    </div>
</body>
</html>
