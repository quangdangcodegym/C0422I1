<%@ page import="com.codegym.model.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=<device-width>, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <%!
        User a;
    %>
    <%

        String sUserName = (String) request.getAttribute("username");
        String sPassword = (String) request.getAttribute("password");
        int a = 2 +5;
        //User a;
        User user = new User("thien", "12345");
        System.out.println("User info" + user);
    %>
    <form action="/login" method="post">
        <input type="text" name="username" value="${requestScope.username}"/>
        <input type="text" name="password" value="${requestScope.password}" />

        <div>
            ${requestScope.error} ********** <%= user.getPassword()%>
        </div>
        <button type="submit">Login</button>
    </form>
</body>
</html>