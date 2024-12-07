<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Boot</title>
    <style>
        /* General body styles */
        body {
            background-color: #34495E; /* Dark background for a modern feel */
            font-family: 'Arial', sans-serif;
            color: #fff;
            margin: 0;
            padding: 0;
        }

        /* Centered heading styles */
        h2 {
            color: #fff;
            margin-top: 40px;
            text-align: center;
            font-size: 28px;
            font-weight: bold;
            padding: 10px;
            background-color: #16A085; /* Attractive teal color */
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        /* Navigation bar styles */
        .navbar {
            display: flex;
            justify-content: center;
            background-color: #2C3E50; /* Dark gray/navy background */
            padding: 12px 0;
            position: sticky;
            top: 0;
            z-index: 10;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.2);
        }

        .navbar a {
            color: #ecf0f1; /* Light text for contrast */
            text-decoration: none;
            padding: 14px 22px;
            font-size: 16px;
            font-weight: bold;
            transition: background-color 0.3s, transform 0.2s;
            border-radius: 5px;
            margin: 0 10px;
        }

        /* Hover effect for navbar links */
        .navbar a:hover {
            background-color: #1ABC9C; /* Bright teal for hover */
            transform: scale(1.1); /* Slight scale effect */
        }

        /* Active link styling */
        .navbar a:active {
            background-color: #16A085; /* Slightly darker teal for active state */
        }

        /* Add some padding to the body for spacing */
        body {
            padding-bottom: 20px;
        }

        /* Responsive design for smaller screens */
        @media (max-width: 768px) {
            .navbar {
                flex-direction: column;
                align-items: center;
            }

            .navbar a {
                margin: 10px 0;
                font-size: 18px;
            }
        }

    </style>
</head>
<body>

    <!-- Navigation bar -->
    <div class="navbar">
        <a href="/borrowerhome">Home</a>
        <a href="/borrowerprofile">Profile</a>
        <a href="/updateborrower">Update Profile</a>
        <a href="/addloanrequest">Apply for Loan</a>
        <a href="/ViewLoanRequestStatus">Loan Status</a>
        <a href="/loans/calculate-loan">Loan Calculation</a> <!-- Link to loan calculation page -->
        <a href="/payloan">Pay Loan</a>
        <a href="/borrowerlogout">Logout</a>
    </div>

</body>
</html>
