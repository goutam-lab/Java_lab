<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
    <h2>Welcome, <%= session.getAttribute("username") %>!</h2>
    <p>You have successfully logged in.</p>

    <form action="deleteUser" method="post" onsubmit="return confirm('Are you sure you want to delete your account? This action cannot be undone.');">
        <input type="submit" value="Delete Account" />
    </form>
</body>
</html>
