<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 23.01.2021
  Time: 18:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="links.jsp"%>
    <title>Permission denied</title>
</head>
<body>
<div class="container pt-5">
    <div class="row">
        <div class="col text-center">
            <h1 class="h1">Authorization required to see this page</h1>
            <a href="index.jsp" class="btn btn-link">go to main page</a>
            <span>or</span>
            <a href="login.jsp" class="btn btn-link">sign in</a>
            <br>
            <img src="https://findicons.com/files/icons/2796/metro_uinvert_dock/128/security_denied.png" alt="denied" class="mt-5">
        </div>
    </div>
</div>
</body>
</html>
