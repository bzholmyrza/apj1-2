<%--
  Created by IntelliJ IDEA.
  User: Beibarys
  Date: 16.11.2020
  Time: 16:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Event</title>
    <%@include file="header.jsp"%>
</head>
<body>
    <%@include file="jumbotron.jsp"%>
    <script>
        $( document ).ready(function () {
            $.ajax({
                url: 'api/clubs/<%=request.getParameter("id")%>/subscription/<%=cur.getId()%>',
                method: 'GET',
                success: function (data) {
                    if (!data.hasOwnProperty("privId")) {
                        location.href = "club.jsp?id=<%=request.getParameter("id")%>"
                    } else if (data.privId < 2 && 2 > <%=cur.getPrivId()%>) {
                        location.href = "club.jsp?id=<%=request.getParameter("id")%>"
                    }
                }
            });
            var clubId
            $.ajax({
                url: 'api/events/<%=request.getParameter("id")%>',
                type: 'GET',
                contentType: "application/json",
                success:
                    function (data) {
                        $("#eventName").val(data.eventName)
                        $("#description").val(data.description)
                        var t = data.date.substr(0, 16)
                        $("#date").val(t);
                        clubId = data.clubId
                    }
            });
            $("#btn").click(function () {
                eventName = $("#eventName").val();
                description = $("#description").val();
                date = $("#date").val();
                var log = {
                    "id": <%=request.getParameter("id")%>,
                    "clubId": clubId,
                    "eventName": eventName,
                    "description": description,
                    "publishDate": null,
                    "date": date
                }
                $.ajax({
                    url: 'api/events/',
                    type: 'PUT',
                    data: JSON.stringify(log),
                    contentType: "application/json",
                    success:
                        function (data) {
                            if (data.status === "success") {
                                window.location.href = "club.jsp?id=" + clubId;
                            } else {
                                $("#errormsg").text('Error: Incorrect data - ' + data.status);
                                $("#errormsg").show();
                            }
                        },
                    fail:
                        function (data) {
                            $("#errormsg").text('Error: Incorrect data - ' + data.status);
                            $("#errormsg").show();
                        }
                });

            });
        });
    </script>
<div class="container">
    <form method="post">
        <span class="error text-danger" id="errormsg" style="display: none"></span>
        <div class="form-group">
            <label for="eventName">Event Name:</label><br>
            <input type="text" name="eventName" class="form-control" id="eventName">
        </div>
        <div class="form-group">
            <label for="description">Event Description:</label><br>
            <textarea name="description" class="form-control" id="description"> </textarea>
        </div>
        <div class="form-group">
            <label for="date">Date:</label><br>
            <input type="datetime-local" name="date" id="date">
        </div>
        <input type="button" class="btn btn-dark" id="btn" value="Update Event">
    </form>
</div>
</body>
</html>
