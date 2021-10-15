<%--
  Created by IntelliJ IDEA.
  User: Beibarys
  Date: 18.10.2020
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Index Page</title>
    <%@include file="bootstrap.jsp"%>
</head>
<body>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <article class="card-body">
                    <form action="MyServlet" method="post">
                        <div class="form-row">
                            <div class="col form-group">
                                <label>Full name </label>
                                <input type="text" class="form-control" id="fullName" name="fullName" placeholder="Enter your full name">
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Email address</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email">
                            <small class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>

                        <div class="form-group">
                            <label>Password</label>
                            <input class="form-control" type="password" name="password" placeholder="Create your password">
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-block">Register</button>
                        </div>
                    </form>
                </article>
            </div>
        </div>
    </div>
</div>
</body>
</html>

