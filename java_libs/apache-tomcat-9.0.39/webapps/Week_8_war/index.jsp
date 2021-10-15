<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 29.10.2020
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        try{
            Class.forName("org.postgresql.Driver");//1st step
            Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "bibok02@zhanik06");//2nd step
            Statement stmt = con.createStatement();//3rd step
            ResultSet rs = stmt.executeQuery("select * from employee");
            while (rs.next()) {
                %>
            <%=rs.getInt(1) + " " + rs.getString(2)%>
            <%
            }
            con.close();
        }
        catch (ClassNotFoundException cl) {
            System.out.println(cl.getMessage());
        }
        catch (SQLException sqle) {
            System.out.println(sqle.getMessage());
        }
    %>
</body>
</html>
