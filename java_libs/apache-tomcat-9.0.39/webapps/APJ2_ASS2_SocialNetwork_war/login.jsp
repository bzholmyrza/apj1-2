<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 22.01.2021
  Time: 22:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/StartServlet" method="post">
    <input type="text" name="username">
    <input type="submit" value="Login">
</form>
</body>
</html>