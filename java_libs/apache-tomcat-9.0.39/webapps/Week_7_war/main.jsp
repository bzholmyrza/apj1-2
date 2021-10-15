<%--
  Created by IntelliJ IDEA.
  User: Beibarys
  Date: 18.10.2020
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main</title>
    <%@include file="bootstrap.jsp"%>
</head>
<body>
<%
    String fullName = (String) session.getAttribute("fullName");
    String email = (String) session.getAttribute("email");
    String pass = (String) session.getAttribute("password");

    if (fullName.isEmpty() || email.isEmpty() || pass.isEmpty()) {
        response.sendRedirect("index.jsp");
    }
%>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <article class="card-body">
                    <form action="truck.jsp" method="post">
                        <div class="form-row">
                            <div class="form-group col-md-9">
                                <label>Fruits</label>
                                <select name="fruits" class="form-control">
                                    <option selected="">Choose...</option>
                                    <option value="orange 7"> Orange </option>
                                    <option value="banana 11"> Banana </option>
                                    <option value="apple 5"> Apple </option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-block">Add to the truck</button>
                        </div>
                    </form>
                </article>
            </div>
        </div>
    </div>
</div>
</body>
</html>
