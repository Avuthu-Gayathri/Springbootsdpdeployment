<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage Borrowers</title>
<style>
/* General body styles */
body {
    background-color: #f7f7f7;
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

/* Center heading style with text color */
h3 {
    color: #333;
    text-align: center;
    font-size: 28px;
    font-weight: bold;
    margin-bottom: 20px;
}

/* Form container styling */
.form-container {
    width: 60%;
    margin: 20px auto;
    background-color: #fff;
    padding: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
}

/* Table styles */
table {
    width: 100%;
    max-width: 1200px;
    margin: 20px auto;
    border-collapse: collapse;
    table-layout: auto;
    background-color: #fff;
}

/* Table header styling */
th {
    background-color: #343a40;
    color: white;
    padding: 12px;
    text-align: center;
    font-size: 16px;
}

/* Table cell styling */
td {
    border: 1px solid #ddd;
    padding: 12px;
    text-align: center;
    font-size: 14px;
    color: #333;
}

/* Row alternating colors */
tr:nth-child(even) {
    background-color: #f8f9fa;
}

tr:nth-child(odd) {
    background-color: #ffffff;
}

/* Hover effect for rows */
tr:hover {
    background-color: #e2e6ea;
}

/* Action button styling */
a {
    color: #dc3545;
    text-decoration: none;
    font-weight: bold;
}

a:hover {
    color: #c82333;
    text-decoration: underline;
}
</style>
</head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <h3><u>Manage Borrowers</u></h3>
    <div class="form-container">
        <table>
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>DATE OF BIRTH</th>
                <th>EMAIL</th>
                <th>CONTACT NUMBER</th>
                <th>ADDRESS</th>
                <th>ACTION</th>
            </tr>
            <c:forEach items="${borrowerlist}" var="borrower">
                <tr>
                    <td><c:out value="${borrower.id}"/></td>
                    <td><c:out value="${borrower.name}"/></td>
                    <td><c:out value="${borrower.dob}"/></td>
                    <td><c:out value="${borrower.email}"/></td>
                    <td><c:out value="${borrower.contactno}"/></td>
                    <td><c:out value="${borrower.address}"/></td>
                    <td>
                        <a href='<c:url value="deleteBorrower?id=${borrower.id}"></c:url>'>Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
