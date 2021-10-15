<%@ page import="java.io.File" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 24.09.2020
  Time: 22:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Uploading...</title>
    <%@include file="bootstrap.jsp"%>
    <style>
        <%@include file="css.css"%>
    </style>
</head>
<%@include file="header.jsp"%>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <article class="card-body">
                    <form action="Create" method="post">
                        <div>
                            <label for="searching">Browse files</label>
                            <input class="form-control" type="text" onchange="searchInFiles()" name="searching" id="searching" placeholder="Enter file name, which you want to find">
                        </div>
                        <div class="form-group">
                            <label>Folder Name</label>
                            <input type="text" class="form-control" id="folder" name="folder" placeholder="Enter your folder name">
                            <small class="form-text text-muted">It is not necessary to create a folder. Your files will not disappear</small>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-block">Create Folder</button>
                        </div>
                    </form>

                    <div>
                        <%
                            String msg = (String)request.getAttribute("msg");
                            if (msg != null) {
                                out.print(msg);
                            }
                        %>
                    </div>

                    <form action="Upload" method="post" enctype = "multipart/form-data">
                        <div class="form-group">
                            <label>Choose File</label>
                            <input class="form-control" type="file" name="file">
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-block">Upload</button>
                        </div>
                    </form>
                </article>
                <article class="card-body">
                    <ul type="none">
                    <%
                        String path = (String) request.getAttribute("path");
                        if (path == null) {
                            path = "C:\\DATA";
                        }
                        File UploadedFiles = new File(path);
                        for (File file : UploadedFiles.listFiles()) {
                            %>
                                <li>
                                    <%= file.getName() + " " %>
                                    <%= file.length() + "KB " %>
                                    <a href="Delete?del=<%=file.getName()%>">Delete</a>
                                    <a href="Download?down=<%=file.getName()%>">Download</a>
                                    <%
                                        if (!file.getName().contains(".")) {
                                    %>
                                        <a href="Open?open=<%=file.getName()%>">Open</a>
                                    <%
                                        }
                                    %>
                                </li>
                            <%
                        }
                    %>
                    </ul>
                </article>
            </div>
        </div>
    </div>
</div>
<%@include file="footer.jsp"%>