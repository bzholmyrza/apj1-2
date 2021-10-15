<%--
  Created by IntelliJ IDEA.
  User: Beibarys
  Date: 21.10.2020
  Time: 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Final</title>
    <%@include file="bootstrap.jsp"%>
</head>
<body>
    <%
        HashMap<String, Integer> quantity = (HashMap<String, Integer>) session.getAttribute("quantity");
    %>
    <%@include file="table.jsp"%>
<div>
    <h3>Total Price:</h3>
    <h3><%= totalPrice %> $</h3>
    <h4>Thank you for buying</h4>
</div>
</body>
</html>
