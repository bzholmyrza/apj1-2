<%@ page import="kz.bzholmyrza.services.BookService" %>
<%@ page import="kz.bzholmyrza.models.Book" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 17.02.2021
  Time: 11:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main Page</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" name="bootstrap-css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
</head>
<body>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
    <div class="container">
        <a class="navbar-brand" href="https://astanait.edu.kz/">
            <img height="100px" width="300px" src="https://moodle.astanait.edu.kz/pluginfile.php/1/core_admin/logo/0x150/1613448995/Astana%20IT%20University%20%284%29.png" alt="AITU">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/users">View Users</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/books">View Books</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/users/new">Registration</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Page Content -->
<%--<div class="container">
    <%
        BookService bookService = new BookService();
        List<Book> books = bookService.findAllBooks();
        for (Book book : books) {
    %>
    <div class="container">
        <div class="col-md-12">
            <div class="card">
                <header class="card-header">
                    <a href="#" class="float-right btn btn-outline-primary mt-1">Take</a>
                    <h4 class="card-title mt-2"><%=book.getName()%></h4>
                </header>
                <article class="card-body row">
                    <div class="col-md-3">
                        <img width="200" height="250" src="<%=book.getUrl()%>">
                    </div>
                    <div class="col-md-9">
                        <div class="form-row">
                            <div class="col form-group">
                                <p><b>ISBN:</b> <%=book.getIsbn()%></p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <p><b>AUTHOR:</b> <%=book.getAuthor()%></p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <p><b>Available number:</b> <%=book.getCountOfCopies()%></p>
                            </div>
                        </div>
                    </div>
                </article>
            </div>
        </div>
    </div>
    <br>
    <%
        }
    %>
</div>--%>
</body>
</html>
