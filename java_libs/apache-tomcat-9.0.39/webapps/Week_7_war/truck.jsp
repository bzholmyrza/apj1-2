<%--
  Created by IntelliJ IDEA.
  User: Beibarys
  Date: 18.10.2020
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.HashMap" %>
<%@ page import="jav<%@include file="bootstrap.jsp"%>a.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Truck</title>

</head>
<body>
<%
    HashMap<String, Integer> quantity = (HashMap<String, Integer>) session.getAttribute("quantity");
    String value = request.getParameter("fruits");
    String[] namePrice = value.split(" ");
    int price = Integer.parseInt(namePrice[1]);
    String name = namePrice[0];
    if (quantity.containsKey(name)) {
        int p = quantity.get(name);
        quantity.replace(name, p, p + price);
    } else {
        quantity.put(name, price);
    }
    session.setAttribute("quantity", quantity);
%>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <h3>Truck</h3>
            <%@include file="table.jsp"%>
            <div class="card">
                <article class="card-body">
                    <div class="form-group">
                        <a href="main.jsp" class="btn btn-primary btn-block">Buy More</a>
                    </div>
                    <form action="final.jsp" method="post">
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-block">That's all</button>
                        </div>
                    </form>
                </article>
            </div>
        </div>
    </div>
</div>
</body>
</html>
