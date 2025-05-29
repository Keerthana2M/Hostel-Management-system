<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Delete Student</title>
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: linear-gradient(to right, #fff5f8, #e0f7fa);
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 50px 20px;
      margin: 0;
      min-height: 100vh;
    }

    h2 {
      color: #ff6f91;
      margin-bottom: 30px;
    }

    form {
      background-color: white;
      padding: 30px 40px;
      border-radius: 12px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
      width: 100%;
      max-width: 400px;
      box-sizing: border-box;
    }

    label {
      font-weight: bold;
      color: #333;
      display: block;
      margin-bottom: 8px;
      font-size: 1.1rem;
    }

    input[type="number"] {
      width: 100%;
      padding: 10px;
      font-size: 1rem;
      border-radius: 6px;
      border: 1px solid #ccc;
      margin-bottom: 20px;
      transition: border-color 0.3s ease;
    }

    input[type="number"]:focus {
      border-color: #4a90e2;
      outline: none;
    }

    input[type="submit"] {
      background-color: #ff6f91;
      color: white;
      font-weight: bold;
      border: none;
      padding: 12px;
      width: 100%;
      border-radius: 6px;
      font-size: 1.1rem;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
      background-color: #e15578;
    }

    a {
      display: inline-block;
      margin-top: 20px;
      text-decoration: none;
      color: #4a90e2;
      font-weight: 600;
      font-size: 1rem;
    }

    a:hover {
      text-decoration: underline;
    }

    /* Message styling */
    .message {
      max-width: 400px;
      padding: 15px 20px;
      border-radius: 8px;
      margin-bottom: 30px;
      font-weight: 600;
      box-sizing: border-box;
      text-align: center;
    }

    .success-message {
      background-color: #d4edda;
      border: 1px solid #c3e6cb;
      color: #155724;
    }

    .error-message {
      background-color: #f8d7da;
      border: 1px solid #f5c6cb;
      color: #721c24;
    }
  </style>
</head>
<body>

  <h2>🗑️ Delete Student</h2>

  <%
    String message = (String) request.getAttribute("message");
    if (message != null) {
      // Simple heuristic: if message contains "success", show green, else red
      String cssClass = message.toLowerCase().contains("success") ? "success-message" : "error-message";
  %>
    <div class="message <%= cssClass %>"><%= message %></div>
  <% } %>

  <form action="DeleteStudentServlet" method="post" novalidate>
    <label for="id">Enter Student ID to Delete:</label>
    <input type="number" id="id" name="id" min="1" required aria-required="true" />
    <input type="submit" value="Delete Student" />
  </form>

  <a href="index.jsp">⬅️ Back to Home</a>

</body>
</html>
