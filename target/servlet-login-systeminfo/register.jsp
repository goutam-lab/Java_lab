<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Registration</title>
</head>
<body>
    <h2>Register New User</h2>
    <form action="register" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>
        <input type="submit" value="Register">
    </form>
    <br>
    <c:if test="${not empty error}">
        <div style="color:red;">${error}</div>
    </c:if>
    <br>
    <a href="login.jsp">Back to Login</a>
</body>
</html>
