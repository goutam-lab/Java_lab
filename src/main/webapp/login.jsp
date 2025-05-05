<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Login</title>
</head>
<body>
    <h2>User Login</h2>
    <form action="login" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required /><br/><br/>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required /><br/><br/>
        <input type="submit" value="Login" />
    </form>
    <p style="color:red;">
        <% String error = (String) request.getAttribute("error");
           if (error != null) { %>
           <%= error %>
        <% } %>
    </p>
</body>
</html>
