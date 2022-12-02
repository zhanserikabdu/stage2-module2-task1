<%@ page import="com.example.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
        <meta charset="utf-8">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <title> Add user </title>
</head>
<body>
<div class="w3-container" style="margin-left:10px; width:400px;">
    <%     User user = (User) request.getAttribute("user");
        if (user != null) {%>
    <p>User <%=user.getFirstName() + " " + user.getLastName() %> added!</p>
    <%}%>
    <h3 class="title w3-text-black">
        <span>Add user</span>
    </h3>
    <form action="add" method="post">
        <input class="w3-input w3-border" required name="firstName" placeholder="Enter First Name">
        <br>
        <input class="w3-input w3-border" required name="lastName" placeholder="Enter Last Name">
        <br>
        <button class="w3-button w3-round btn-block w3-green" type="submit">Submit</button>
    </form>
    <div>
        <button class="w3-btn w3-light-blue w3-round-large" onclick="location.href='/users'">Users</button>
    </div>
</div>
</body>
</html>