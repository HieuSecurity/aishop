<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Email and Password List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>Danh sách Email và Password</h1>
    <table border="1">
        <thead>
            <tr>
                <th>Email</th>
                <th>Password</th>
            </tr>
        </thead>
        <tbody>
            <!-- Duyệt qua danh sách accounts và hiển thị từng email và password -->
            <c:forEach var="account" items="${accounts}">
                <tr>
                    <td>${account[0]}</td> <!-- Email -->
                    <td>${account[1]}</td> <!-- Password -->
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
