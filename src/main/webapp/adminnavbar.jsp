<!DOCTYPE html>
<html>
<head>
    <title>Spring Boot</title>
    <style>
        /* General body styles */
        body {
            background-color: #1A1A2E; /* Dark navy blue background */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #ffffff;
            margin: 0;
            padding: 0;
        }

        /* Centered heading styles */
        h2 {
            color: #E94560; /* Vivid pinkish-red */
            margin-top: 20px;
            text-align: center;
            font-size: 28px;
            font-weight: bold;
        }

        /* Navigation bar styles */
        .navbar {
            display: flex;
            justify-content: center;
            background-color: #16213E; /* Deep blue */
            padding: 12px 0;
            position: sticky;
            top: 0;
            z-index: 10;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .navbar a {
            color: #F0F0F0; /* Light gray text */
            text-decoration: none;
            padding: 14px 20px;
            font-size: 17px;
            font-weight: bold;
            margin: 0 10px;
            border-radius: 8px;
            transition: background-color 0.3s, color 0.3s;
        }

        .navbar a:hover {
            background-color: #E94560; /* Vivid pinkish-red */
            color: #ffffff;
        }

        /* Add some padding to the body for spacing */
        body {
            padding-bottom: 20px;
        }   
    </style>
</head>
<body>
    
    <div class="navbar">
        <a href="adminhome">Home</a>
        <a href="viewalllenders">View All Lenders</a>
        <a href="viewallborrowers">View All Borrowers</a>
         <a href="deletelender">Delete Lenders</a>
        <a href="deleteborrower">Delete Borrowers</a>
        <!-- <a href="updateempstatus">Update Borrower Status</a> -->
       
        <a href="adminlogout">Logout</a>
    </div>
</body>
</html>
