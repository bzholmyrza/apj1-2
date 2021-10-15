<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 18.09.2020
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
    <%@include file="bootstrap.jsp"%>
    <style type="text/css">
        body{
            display:flex;
            justify-content:center;
            text-align:center;
        }
    </style>
</head>
<body>
<h1>
    <%
        String msg = (String) request.getAttribute("error");
    %>
    <div>
        <h1>
            <%= msg %>
        </h1>
        <br>
        <a class="btn btn-primary" href="https://astanait.edu.kz/" role="button">Become a student</a>
        <a class="btn btn-primary" href="index.jsp" role="button">Register</a>
    </div>
</h1>
</body>
</html>