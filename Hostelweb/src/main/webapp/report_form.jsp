<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Generate Student Reports</title>
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: linear-gradient(to right, #fce3ec, #ffe5ec);
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
    }

    .form-container {
      background-color: #fff0f3;
      padding: 40px 50px;
      border-radius: 20px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
      width: 100%;
      max-width: 600px;
    }

    h2 {
      text-align: center;
      margin-bottom: 30px;
      color: #ff4d6d;
      font-size: 2em;
      text-shadow: 1px 1px 2px #fff0f3;
    }

    form label {
      font-size: 1.1rem;
      color: #333;
      display: block;
      margin: 12px 0 5px;
    }

    input[type="radio"] {
      margin-right: 10px;
    }

    .radio-group {
      margin-bottom: 20px;
    }

    input[type="text"],
    input[type="date"] {
      width: 100%;
      padding: 10px 12px;
      border: 1px solid #ccc;
      border-radius: 8px;
      font-size: 1rem;
      margin-top: 6px;
      background-color: #fff;
    }

    input[type="submit"] {
      width: 100%;
      padding: 14px;
      background-color: #ff4d6d;
      color: white;
      font-size: 1.1rem;
      font-weight: bold;
      border: none;
      border-radius: 30px;
      cursor: pointer;
      margin-top: 20px;
      transition: background-color 0.3s, transform 0.2s;
      box-shadow: 2px 4px 6px rgba(0, 0, 0, 0.1);
    }

    input[type="submit"]:hover {
      background-color: #ff6b81;
      transform: scale(1.03);
    }

    .back-link {
      text-align: center;
      display: block;
      margin-top: 25px;
      text-decoration: none;
      font-size: 1rem;
      font-weight: 600;
      color: #4a90e2;
      transition: color 0.3s;
    }

    .back-link:hover {
      color: #2c6ed5;
    }
  </style>
</head>
<body>

  <div class="form-container">
    <h2>📊 Generate Student Report</h2>

    <form action="ReportServlet" method="post">

      <div class="radio-group">
        <label>
          <input type="radio" name="reportType" value="pendingFees" required>
          Students with Pending Fees
        </label>
      </div>

      <div class="radio-group">
        <label>
          <input type="radio" name="reportType" value="roomStudents" required>
          Students in a Particular Room
        </label>
        <input type="text" name="roomNumber" placeholder="Enter Room Number">
      </div>

      <div class="radio-group">
        <label>
          <input type="radio" name="reportType" value="dateRange" required>
          Students Admitted Between Dates
        </label>
        <label>From:</label>
        <input type="date" name="startDate">
        <label>To:</label>
        <input type="date" name="endDate">
      </div>

      <input type="submit" value="Generate Report">
    </form>

    <a href="index.jsp" class="back-link">⬅️ Back to Home</a>
  </div>

</body>
</html>
