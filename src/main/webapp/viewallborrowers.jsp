<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Borrowers</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        h3 {
            margin-top: 20px;
            color: #333;
            font-weight: bold;
        }

        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: center;
            color: #333;
        }

        th {
            background-color: #4CAF50;
            color: white;
            text-transform: uppercase;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:nth-child(odd) {
            background-color: #fff;
        }

        tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Manage Borrowers</u></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>DATE OF BIRTH</th>
            <th>EMAIL</th>
            <th>CONTACT NUMBER</th>
            <th>ADDRESS</th>
        </tr>
        <c:forEach items="${borrowerlist}" var="borrower">
            <tr>
                <td><c:out value="${borrower.id}"/></td>
                <td><c:out value="${borrower.name}"/></td>
                <td><c:out value="${borrower.dob}"/></td>
                <td><c:out value="${borrower.email}"/></td>
                <td><c:out value="${borrower.contactno}"/></td>
                <td><c:out value="${borrower.address}"/></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>