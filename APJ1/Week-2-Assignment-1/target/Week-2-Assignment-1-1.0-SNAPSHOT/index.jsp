<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 18.09.2020
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration Page</title>
    <%@include file="bootstrap.jsp"%>
</head>
<body>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <header class="card-header">
                    <a href="login.jsp" class="float-right btn btn-outline-primary mt-1">Log in</a>
                    <h4 class="card-title mt-2">Sign up</h4>
                </header>
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
                            <label class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="gender" value="male">
                                <span class="form-check-label"> Male </span>
                            </label>
                            <label class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="gender" value="female">
                                <span class="form-check-label"> Female</span>
                            </label>
                            <label class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="gender" value="other">
                                <span class="form-check-label"> Other</span>
                            </label>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label>City</label>
                                <input type="text" class="form-control" id="city" name="city">
                            </div>
                            <div class="form-group col-md-6">
                                <label>Country</label>
                                <select name="country" class="form-control">
                                    <option> Choose...</option>
                                    <option>United States</option>
                                    <option>Russia</option>
                                    <option selected="">Kazakhstan</option>
                                    <option>India</option>
                                    <option>Afganistan</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Password</label>
                            <input class="form-control" type="password" name="passwordR" placeholder="Create your password">
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-block">Register</button>
                        </div>
                    </form>
                </article>
                <div class="border-top card-body text-center">Have an account? <a href="login.jsp">Log In</a></div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
