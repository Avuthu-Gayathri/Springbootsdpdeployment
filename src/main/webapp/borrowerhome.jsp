<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Borrower Home</title>
    <style>
        /* General body styles */
        body {
            background-color: #1E2A38; /* Dark blue-gray background */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #F0F0F0;
            margin: 0;
            padding: 0;
        }

        /* Centered heading styles */
        h1 {
            color: #4CD3C2; /* Bright cyan */
            text-align: center;
            margin-top: 30px;
            font-size: 32px;
            font-weight: bold;
        }

        /* Navigation bar styles */
        .navbar {
            display: flex;
            justify-content: center;
            background-color: #273B4F; /* Deep navy blue */
            padding: 12px 0;
            position: sticky;
            top: 0;
            z-index: 10;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }

        .navbar a {
            color: #FFFFFF; /* White text */
            text-decoration: none;
            padding: 14px 20px;
            font-size: 16px;
            font-weight: bold;
            margin: 0 8px;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }

        .navbar a:hover {
            background-color: #4CD3C2; /* Bright cyan */
            color: #1E2A38; /* Dark background for contrast */
        }

        /* Body spacing */
        body {
            padding-bottom: 20px;
        }

    </style>
</head>
<body>
    <%-- Include navigation bar --%>
    <%@ include file="Borrowernavbar.jsp" %>
   

    <h1>Welcome, <c:out value="${borrower.name}" /></h1>  <!-- Correctly access borrower object -->
</body>
</html>
