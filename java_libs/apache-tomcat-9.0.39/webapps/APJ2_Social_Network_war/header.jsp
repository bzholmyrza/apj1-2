<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 23.01.2021
  Time: 18:31
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <a class="navbar-brand" href="/">VJave</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault"
            aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarsExampleDefault" style="text-align: center; background-color: darkviolet">
        <ul class="navbar-nav mr-auto">
            <c:choose>
                <c:when test="${empty sessionScope.user_id}">
                    <li class="nav-item active">
                        <a class="nav-link" href="postForm.jsp">Create A Post</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="login.jsp">Login</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="register.jsp">Registration</a>
                    </li>
                </c:when>
                <c:otherwise>
                    <li class="nav-item active">
                        <a class="nav-link" href="postForm.jsp" >Create A Post</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="userPage.jsp">Home Page</a>
                    </li>
                    <li class="nav-item active">
                        <button id="btn_logout" class="btn btn-danger">Log out</button>
                    </li>
                </c:otherwise>
            </c:choose>
        </ul>
    </div>
    <script>
        $(document).ready(function () {
            $('#btn_logout').click(function () {
                $.ajax({
                    url: 'Login',
                    type: 'post',
                    data: {action: 'logout'},
                    success: function (data) {
                        if (data === 'True') {
                            location.href = '/'
                        }
                    }
                })
            });
        })
    </script>
</nav>
