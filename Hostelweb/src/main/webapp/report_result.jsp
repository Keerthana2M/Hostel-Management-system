<%@ page import="java.util.*, com.model.student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hostel Student Report</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #fce3ec, #ffe5ec);
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            margin-top: 40px;
            color: #ff4d6d;
            text-shadow: 1px 1px 2px #fff0f3;
            font-size: 2em;
        }

        table {
            width: 90%;
            margin: 30px auto;
            border-collapse: collapse;
            background-color: #fff0f3;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 14px 18px;
            border-bottom: 1px solid #f8c6d4;
            text-align: center;
            font-size: 1em;
        }

        th {
            background-color: #ff4d6d;
            color: white;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #ffe5ec;
        }

        .no-data {
            text-align: center;
            font-size: 1.2em;
            color: #666;
            margin-top: 50px;
        }

        .back-button {
            display: block;
            width: fit-content;
            margin: 30px auto;
            padding: 12px 25px;
            text-align: center;
            background-color: #ff4d6d;
            color: white;
            text-decoration: none;
            border-radius: 30px;
            font-size: 1.1em;
            transition: background-color 0.3s ease, transform 0.2s ease;
            box-shadow: 2px 4px 6px rgba(0, 0, 0, 0.1);
        }

        .back-button:hover {
            background-color: #ff6b81;
            transform: scale(1.05);
        }
    </style>
</head>
<body>

<h2>📋 Filtered Hostel Students Report</h2>

<%
    List<student> students = (List<student>) request.getAttribute("reportData");

    if (students != null && !students.isEmpty()) {
%>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Room No</th>
            <th>Admission Date</th>
            <th>Fees Paid</th>
            <th>Pending Fees</th>
        </tr>
        <%
            for (student s : students) {
        %>
        <tr>
            <td><%= s.getId() %></td>
            <td><%= s.getName() %></td>
            <td><%= s.getRoomNumber() %></td>
            <td><%= s.getAdmissionDate() %></td>
            <td><%= s.getFeesPaid() %></td>
            <td><%= s.getPendingFees() %></td>
        </tr>
        <% } %>
    </table>
<%
    } else {
%>
    <p class="no-data">🚫 No records found for the selected criteria.</p>
<%
    }
%>

<a href="report_form.jsp" class="back-button">← Back to Report Form</a>

</body>
</html>
