<%@ page import="com.codegym.model.User" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--
  Created by IntelliJ IDEA.
  User: URIGOO
  Date: 04/08/2022
  Time: 2:19 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>Xin chao ${requestScope.userinfo}</h1>

    <h1>Danh sach hoc vien lop C4</h1>
    <%
//        List<User> list = (List<User>) request.getAttribute("listUser");
//        out.println("<ul>");
//        for(User u: list){
//            String str = "<li>" + u.getUsername() + "</li>";
//            out.println(str);
//        }
//        out.println("</ul>");
    %>

</body>
    <c:forEach items="${requestScope.listUser}" var="u">
<%--        <c:if test="${u.getPassword()!='55555'}" >--%>
<%--            <li><c:out value="${u.getUsername()}"></c:out></li>--%>
<%--        </c:if>--%>
        <c:choose>
            <c:when test="${u.getPassword()=='55555'}">
                <li>Phu bi duoi hoc ve que chan lay vo dep</li>
            </c:when>
            <c:otherwise>
                <li><c:out value="${u.getUsername()}"></c:out></li>
            </c:otherwise>
        </c:choose>
    </c:forEach>

</html>
