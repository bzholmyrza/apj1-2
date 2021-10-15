<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 23.01.2021
  Time: 18:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="links.jsp"%>
    <title>Post</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-4 mx-auto">
            <div style="margin-top: 15vh;" class="d-flex justify-content-center">
                <h2>Post form</h2>
            </div>
            <form action="Post" method="post">
                <div class="form-group mb-2">
                    <label>Title</label>
                    <input name="title" type="text" class="form-control">
                </div>
                <div class="form-group">
                    <label>Content</label>
                    <input name="content" type="text" class="form-control">
                </div>
                <div class="form-group">
                    <label>Accessibility</label>
                    <select name="access" class="form-control">
                        <option value="all">whole internet</option>
                        <option value="authorized">only authorized users</option>
                        <option value="friends">only friends</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Commenting</label>
                    <select name="commenting" class="form-control">
                        <option value="true">Enable</option>
                        <option value="false">Disable</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary w-100">Post</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>