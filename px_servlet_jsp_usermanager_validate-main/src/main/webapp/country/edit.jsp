<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Country manager</title>
</head>
<body>
<center>
    <h1>Country Edit</h1>
    <h2>
        <!-- <a href="users?action=users">List All Users</a> -->
        <a href="country">List All Country</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Edit Country</h2>
            </caption>
            <tr>
                <th>Country Name:</th>
                <input type="hidden" name="id" value="${country.getId() }" />
                <td>
                    <input type="text" name="name" id="name" size="45" value = "${country.getName() }"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
