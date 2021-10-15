<%--
  Created by IntelliJ IDEA.
  User: Beibarys
  Date: 21.10.2020
  Time: 9:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.Map" %>
<table class="table">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Fruit</th>
        <th scope="col">Quantity</th>
        <th scope="col">Price</th>
    </tr>
    </thead>
    <tbody>
    <%
        int i = 0;
        int q = 0;
        int totalPrice = 0;
        Iterator hmIterator = quantity.entrySet().iterator();
        while (hmIterator.hasNext()) {
            i++;
            Map.Entry mapElement = (Map.Entry)hmIterator.next();
            int p = ((int)mapElement.getValue());
            totalPrice += p;
            if (p % 5 == 0) {
                q = p / 5;
            } else if (p % 7 == 0) {
                q = p / 7;
            } else if (p % 11 == 0) {
                q = p / 11;
            }
    %>
    <tr>
        <th scope="row"><%= i %></th>
        <td><%= mapElement.getKey() %></td>
        <td><%= q %></td>
        <td><%= p %></td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>
