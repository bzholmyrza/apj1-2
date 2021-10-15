<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.FileReader" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 24.01.2021
  Time: 12:58
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <title>List Of Students In Your City</title>
    <%@include file="bootstrap.jsp"%>
</head>
<body>
<table class="table">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Full Name</th>
        <th scope="col">Email</th>
        <th scope="col">Gender</th>
        <th scope="col">City</th>
        <th scope="col">Country</th>
    </tr>
    </thead>
    <tbody>
    <%
        try{
            Class.forName("org.postgresql.Driver");//1st step
            Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "Bibok02@Zhanik06");//2nd step
            Statement stmt = con.createStatement();//3rd step
            ResultSet rs = stmt.executeQuery("SELECT * FROM users");
            while (rs.next()) {
    %>
    <tr>
        <th scope="row"><%= rs.getInt(1) %></th>
        <td><%= rs.getString(2) %></td>
        <td><%= rs.getString(3) %></td>
        <td><%= rs.getString(4) %></td>
        <td><%= rs.getString(5) %></td>
        <td><%= rs.getString(6) %></td>
        <td><%= rs.getString(7) %></td>
    </tr>
    <%
            }
            con.close();
        }
        catch (ClassNotFoundException cl) {
            out.println(cl.getException());
            System.out.println(cl.getMessage());
        }
        catch (SQLException sqle) {
            out.println(sqle.getErrorCode());
            System.out.println(sqle.getMessage());
        }
    %>
    </tbody>
</table>
<a class="btn btn-primary" href="index.jsp" role="button">Register</a>
</body>
</html>
