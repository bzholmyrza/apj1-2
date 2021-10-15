<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 24.01.2021
  Time: 12:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
    <%@include file="bootstrap.jsp"%>
</head>
<body>
<%
    String email = (String) session.getAttribute("email");
    String pass = (String) session.getAttribute("password");

    if (!email.isEmpty() && !pass.isEmpty()) {
        response.sendRedirect("main.jsp");
    }
%>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <header class="card-header">
                    <a href="index.jsp" class="float-right btn btn-outline-primary mt-1">Registration</a>
                    <h4 class="card-title mt-2">Sign up</h4>
                </header>
                <article class="card-body">
                    <form action="AuthorizationServlet" method="post">
                        <%
                            String error = (String) request.getAttribute("error");
                            if (error != null) {
                        %>
                            <div class="form-group">
                                <h3><%=error%></h3>
                            </div>
                        <%
                            }
                        %>
                        <div class="form-group">
                            <label>Email address</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email">
                            <small class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>

                        <div class="form-group">
                            <label>Password</label>
                            <input class="form-control" type="password" name="password" placeholder="Enter your password">
                        </div>

                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-block">Log In</button>
                        </div>
                    </form>
                </article>
                <div class="border-top card-body text-center">Have not an account? <a href="index.jsp">Registration</a></div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
