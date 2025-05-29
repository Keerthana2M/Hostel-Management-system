<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.model.student" %>
<!DOCTYPE html>
<html>
<head>
  <title>Student List</title>
  <style>
    body {
      font-family: 'Poppins', sans-serif;
      background: linear-gradient(to right, #e0f7fa, #ffe0f0);
      margin: 0;
      padding: 40px;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    h2 {
      color: #ff6f91;
      margin-bottom: 20px;
    }

    a {
      background-color: #ff6f91;
      color: white;
      padding: 10px 20px;
      text-decoration: none;
      border-radius: 8px;
      font-weight: bold;
      transition: background-color 0.3s ease;
    }

    a:hover {
      background-color: #ff4f77;
    }

    table {
      margin-top: 30px;
      border-collapse: collapse;
      width: 90%;
      max-width: 900px;
      background: white;
      border-radius: 15px;
      overflow: hidden;
      box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
    }

    th, td {
      padding: 15px 20px;
      text-align: center;
      border-bottom: 1px solid #f0f0f0;
    }

    th {
      background-color: #ffe6ec;
      color: #333;
    }

    tr:hover {
      background-color: #fdf1f6;
    }

    td[colspan] {
      color: #999;
      font-style: italic;
    }
  </style>
</head>
<body>
  <h2>🎓 Hostel Students</h2>
  

  <table>
    <tr>
      <th>Student ID</th>
      <th>Name</th>
      <th>Room Number</th>
      <th>Admission Date</th>
      <th>Fees Paid</th>
      <th>Pending Fees</th>
    </tr>

    <%
      List<student> students = (List<student>) request.getAttribute("studentsList");
      if (students != null && !students.isEmpty()) {
        for (student s : students) {
    %>
    <tr>
      <td><%= s.getId() %></td>
      <td><%= s.getName() %></td>
      <td><%= s.getRoomNumber() %></td>
      <td><%= s.getAdmissionDate() %></td>
      <td>₹ <%= s.getFeesPaid() %></td>
      <td>₹ <%= s.getPendingFees() %></td>
    </tr>
    <%
        }
      } else {
    %>
    <tr>
      <td colspan="6">No students found.</td>
    </tr>
    <%
      }
    %>
  </table>
  <a href="index.jsp">Back to Home</a>
</body>
</html>
