<%--
  Created by IntelliJ IDEA.
  User: holoi
  Date: 4/20/20
  Time: 19:24
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new category</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="../index.css">
    <link rel="stylesheet" type="text/css" href="../footer.css">
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" style="font-size: 30px; font-weight: bold; color: white">THE BOUTIQUE</a>
        <%--        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault"--%>
        <%--                aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">--%>
        <%--            <span class="navbar-toggler-icon"></span>--%>
        <%--        </button>--%>
        <%--<p>--%>
        <%--    <a href="${pageContext.request.contextPath}/clothing?action=listClothing">Clothing-Manager</a>--%>
        <%--    <a href="${pageContext.request.contextPath}/category?action=listCategory">Category-Manager</a>--%>
        <%--</p>--%>
        <%--        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">--%>
        <ul class="navbar-nav ">
            <li class="nav-item " style="font-size: 25px; font-weight: bold; color: white">
                <a class="nav-link" href="${pageContext.request.contextPath}/category">HOME</a>
            </li> &emsp;&emsp;

            <%--            <li class="nav-item " style="font-size: 25px; font-weight: bold; color: white">--%>
            <%--                <a class="nav-link" href="${pageContext.request.contextPath}/category?action = listCategory">CATEGORY</a>--%>
            <%--            </li> &emsp;&emsp;--%>


        </ul>
</nav>

<div align="center">
    <form class="form-horizontal" method="post">
        <div class="form-group">
            <label class="control-label col-sm-2">Name:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name ="category_name" placeholder="Enter name">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Status:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="status" placeholder="Enter description">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <div class="checkbox">
                    <label><input type="checkbox"> Remember me</label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">SaVe</button>
            </div>
        </div>
    </form>

</div>
</body>
</html>


