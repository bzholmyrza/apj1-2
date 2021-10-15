<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 23.01.2021
  Time: 18:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="links.jsp"%>
    <title>Not found</title>
</head>
<body>
<% String uri = (String) request.getAttribute("uri");%>
<div class="container pt-5">
    <div class="row">
        <div class="col text-center">
            <h1 class="h1"><b>404</b> - page with address <b><i><%=uri%></i></b> not found </h1>
            <a href="index.jsp" class="btn btn-link">go to main page</a>
            <br>
            <img src="https://trktv.net/images/404.png" alt="404" width="448" height="336" class="mt-5">
        </div>
    </div>
</div>
</body>
</html>
