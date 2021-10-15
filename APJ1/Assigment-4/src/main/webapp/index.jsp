<%@ page import="java.util.List" %>
<%@ page import="Interfaces.Moveable" %>
<%@ page import="GenericTypes.Habitat" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 04.10.2020
  Time: 12:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Index</title>
</head>
<body>

<form method="post" action="AnimalServlet">
    <label for="habitat">Choose one option: </label>
    <select name="habitat" id="habitat">
        <option value="tigers">1. Tigers only cage</option>
        <option value="wolfs">2. Wolfs only cage</option>
        <option value="birds">3. flyable birds cell</option>
        <option value="fish">4. Fish only aquarium</option>
        <option value="turtles">5. Turtles only aquarium</option>
        <option value="aquarium">6. Aquarium for all</option>
    </select>
    <br>
    <label for="animalsNum">Specify number of animals in habitat: </label>
    <input type="number" name="animalsNum" id="animalsNum">
    <br>
    <label for="sizeOfHabitat">Specify size for habitat: </label>
    <input type="number" name="sizeOfHabitat" id="sizeOfHabitat">
    <br>

    <input type="submit" value="create">
</form>

<%
    String msg = (String) request.getAttribute("msg");
    String msg2 = (String) request.getAttribute("msg2");
    String availableSize = (String) request.getAttribute("availableSize");
    if (msg2 != "" && msg2 != null) {
        out.println(msg2 + "<br>");
    }
    if (msg != "" && msg != null) {
        out.println(msg + "<br>");
        %>
        <form method="get" action="AnimalServlet">
            <label for="numAnimals">Choose number of animal to be added</label>
            <input type="number" id="numAnimals" name="numAnimals">
            <input type="text" id="availableSize" name="availableSize" hidden value="<%=availableSize%>">
            <input type="submit" value="ADD">
        </form>
<%
    }
%>
<%
    String msg3 = (String) request.getAttribute("msg3");
    if (msg3 != "" && msg3 != null) {
        out.println(msg3 + "<br>");
    }
%>

</body>
</html>
