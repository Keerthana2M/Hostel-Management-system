<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Update Student</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #fce3ec, #ffe5ec);
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 60px auto;
            background: #fff0f3;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            color: #ff4d6d;
            margin-bottom: 30px;
            text-shadow: 1px 1px 2px #fff0f3;
        }

        label {
            font-weight: bold;
            color: #333;
        }

        input[type="text"],
        input[type="number"],
        input[type="date"] {
            width: 100%;
            padding: 12px;
            margin-top: 6px;
            margin-bottom: 20px;
            border: 1px solid #ffccd5;
            border-radius: 10px;
            background: #fffafd;
            box-shadow: inset 0 1px 3px rgba(0,0,0,0.05);
        }

        .btn-group {
            display: flex;
            gap: 15px;
        }

        .btn {
            flex: 1;
            padding: 12px;
            border: none;
            border-radius: 30px;
            font-size: 1em;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn-update {
            background-color: #ff4d6d;
            color: white;
        }

        .btn-update:hover {
            background-color: #ff6b81;
            transform: scale(1.03);
        }

        .btn-home {
            background-color: #d291bc;
            color: white;
        }

        .btn-home:hover {
            background-color: #c06c84;
            transform: scale(1.03);
        }

        .alert {
            margin-top: 20px;
            padding: 15px;
            background-color: #ffc1e3;
            color: #6b0e45;
            border-radius: 10px;
            text-align: center;
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Update Student Details</h2>

    <form action="UpdateStudentServlet" method="post" novalidate>
        <label for="id">Student ID</label>
        <input type="number" id="id" name="id" required min="1">

        <label for="name">Student Name</label>
        <input type="text" id="name" name="name" required maxlength="100">

        <label for="roomNumber">Room Number</label>
        <input type="text" id="roomNumber" name="roomNumber" required maxlength="10">

        <label for="admissionDate">Admission Date</label>
        <input type="date" id="admissionDate" name="admissionDate" required>

        <label for="feesPaid">Fees Paid</label>
        <input type="number" step="0.01" id="feesPaid" name="feesPaid" required min="0">

        <label for="pendingFees">Pending Fees</label>
        <input type="number" step="0.01" id="pendingFees" name="pendingFees" required min="0">

        <div class="btn-group">
            <button type="submit" class="btn btn-update">Update</button>
            <a href="index.jsp" class="btn btn-home">Home</a>
        </div>
    </form>

    <% if (request.getAttribute("message") != null) { %>
        <div class="alert">
            <%= request.getAttribute("message") %>
           
        </div>
        <script>
            setTimeout(() => {
                window.location.href = 'index.jsp';
            }, 4000);
        </script>
    <% } %>
</div>
</body>
</html>
