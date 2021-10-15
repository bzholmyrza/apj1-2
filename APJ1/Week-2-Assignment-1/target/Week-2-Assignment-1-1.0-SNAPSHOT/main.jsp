<%@ page import="java.io.IOException" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.FileReader" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 18.09.2020
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        BufferedReader reader;
        try {
            reader = new BufferedReader(new FileReader("C:\\Users\\ASUS\\Desktop\\db.txt"));
            String line = reader.readLine();
            int count = 1;
            while (line != null) {
                String[] words = line.split(",");
    %>
    <tr>
        <th scope="row"><%= count %></th>
        <td><%= words[1] %></td>
        <td><%= words[2] %></td>
        <td><%= words[3] %></td>
        <td><%= words[4] %></td>
        <td><%= words[5] %></td>
    </tr>
    <%
                // read next line
                line = reader.readLine();
                count++;
            }
            reader.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    %>
    </tbody>
</table>
<a class="btn btn-primary" href="index.jsp" role="button">Register</a>
</body>
</html>