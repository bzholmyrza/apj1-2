<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 23.01.2021
  Time: 18:20
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="links.jsp"%>
    <title>Login page</title>
</head>
<body>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <header class="card-header">
                    <a href="register.jsp" class="float-right btn btn-outline-primary mt-1">Registration</a>
                    <h4 class="card-title mt-2">Sign up</h4>
                </header>
                <article class="card-body">
                    <form>
                        <div class="form-row">
                            <div class="col form-group">
                                <label>Full name </label>
                                <input type="text" class="form-control" id="name" name="name" placeholder="Enter your full name">
                            </div>
                        </div>

                        <div class="form-group">
                            <label>Password</label>
                            <input class="form-control" type="password" name="password" id="password" placeholder="Create your password">
                        </div>
                        <div class="form-group">
                            <p class="d-none alert alert-danger p-1 w-100 text-center" id="invalid_data"></p>
                            <button type="button" class="btn btn-primary w-100" id="btn_login">Log in</button>
                        </div>
                    </form>
                </article>
                <div class="border-top card-body text-center">Have not an account? <a href="register.jsp">Registration</a></div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        $('#btn_login').click(function () {
            let name = $('#name').val();
            let password = $('#password').val();
            if (name.length === 0 || password.length === 0) {
                $('#invalid_data').removeClass('d-none').text('Username or password empty')
                return;
            }
            $.ajax({
                url: "Login",
                type: "post",
                data: {action: 'login', name: name, password: password},
                cache: false,
                success: function (data) {
                    if (data === 'True')
                        location.href = 'userPage.jsp';
                    else {
                        $('#invalid_data').removeClass('d-none').text('Invalid username or password');
                        $('#name').val('');
                        $('#password').val('');
                    }
                }
            })
        })
    })
</script>
</body>
</html>
