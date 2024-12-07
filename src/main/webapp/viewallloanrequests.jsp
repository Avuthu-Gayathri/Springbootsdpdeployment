<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Loan Requests</title>
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

        .accept-btn {
            padding: 8px 15px;
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 14px;
            border-radius: 4px;
        }

        .accept-btn:hover {
            background-color: #45a049;
        }

        .reject-btn {
            padding: 8px 15px;
            background-color: #f44336;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 14px;
            border-radius: 4px;
        }

        .reject-btn:hover {
            background-color: #e53935;
        }

        p {
            text-align: center;
            color: #4CAF50;
            font-size: 16px;
        }

    </style>
</head>
<body>
    <%@ include file="lendernavbar.jsp" %>
    <h3 style="text-align: center;"><u>View All Loan Requests</u></h3>
    <c:if test="${not empty message}">
        <p>${message}</p>
    </c:if>
    <table>
        <tr>
            <th>Request ID</th>
            <th>Loan Type</th>
            <th>Requested Amount</th>
            <th>Request Date</th>
            <th>Due Date</th>
            <th>Interest Rate</th>
            <th>Loan Term</th>
            <th>Request Status</th>
            <th>Actions</th>
           
        </tr>
        <c:forEach items="${loanRequestList}" var="loanRequest">
            <tr>
                <td><c:out value="${loanRequest.requestId}"/></td>
                <td><c:out value="${loanRequest.loanType}"/></td>
                <td><c:out value="${loanRequest.requestedAmount}"/></td>
                <td><c:out value="${loanRequest.requestDate}"/></td>
                <td><c:out value="${loanRequest.dueDate}"/></td>
                <td><c:out value="${loanRequest.interestRate}"/></td>
                <td><c:out value="${loanRequest.loanTerm}"/></td>
                <td><c:out value="${loanRequest.requestStatus}"/></td>
                
                <td>
                    <c:choose>
                        <c:when test="${loanRequest.requestStatus == 'Accepted'}">
                            <span style="color: #4CAF50; font-weight: bold;">Accepted</span>
                        </c:when>
                        <c:when test="${loanRequest.requestStatus == 'Rejected'}">
                            <span style="color: #f44336; font-weight: bold;">Rejected</span>
                        </c:when>
                        <c:otherwise>
                            <form action="acceptloanrequest" method="get" style="display:inline;">
                                <input type="hidden" name="requestId" value="${loanRequest.requestId}" />
                                <button type="submit" class="accept-btn">Accept</button>
                            </form>
                            <form action="rejectloanrequest" method="get" style="display:inline;">
                                <input type="hidden" name="requestId" value="${loanRequest.requestId}" />
                                <button type="submit" class="reject-btn">Reject</button>
                            </form>
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
