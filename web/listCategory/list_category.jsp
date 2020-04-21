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
    <title>Clothing List</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="../index.css">
    <link rel="stylesheet" type="text/css" href="../footer.css">
    <style>
        .btn {
            background-color: DodgerBlue;
            border: none;
            color: white;
            padding: 12px 16px;
            font-size: 16px;
            cursor: pointer;
        }


        .btn:hover {
            background-color: RoyalBlue;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" style="font-size: 30px; font-weight: bold; color: white">THE B<i class='fas fa-cannabis' style='font-size:48px;color:red'></i>UTIQUE</a>
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
                <a class="nav-link" href="${pageContext.request.contextPath}/category"><button class="btn"><i class="fa fa-home"></i>HOME</button></a>
            </li> &emsp;&emsp;
            <li class="nav-item " style="font-size: 25px; font-weight: bold; color: white">
                <a class="nav-link" href="${pageContext.request.contextPath}/category?action=createCategory"><button type=button class="btn">ADD CATEGORY</button></a>
            </li>

        </ul>

        <form class="form-inline my-2 my-lg-0" action="${pageContext.request.contextPath}/category?action=listCategory" method="get">
            <%--                <div class="input-group input-group-sm">--%>
<%--            <input type="hidden" name="action" value="findByStatus" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">&emsp;--%>
<%--            <select name="status" style="width: 100px; height: 40px">--%>
<%--                <c:forEach items='${requestScope["statuses"]}' var="status">--%>
<%--                    <option name="status">${status}</option>--%>
<%--                </c:forEach>--%>
<%--            </select> &emsp;--%>
            <%--                    <div class="input-group-append" >--%>
                <div><input type="text" name="status" placeholder="Enter status" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" style="width: 100px; height: 40px;"></div>
                <button type="submit" value="findByCategoryStatus" class="btn"><i class="fa fa-search"></i></button>&emsp;&emsp;


                <a class="btn btn-success btn-sm ml-3" href="cart.html">
                <i class="fa fa-shopping-cart"></i> Cart
                <span class="badge badge-light">3</span>
            </a>
        </form>

</nav>

<div class="container-fluid">

    <table class="table table-bordered">
        <thead>
        <tr class="success" style="text-align: center">
            <td>ID</td>
            <td>NAME</td>
            <td>STATUS</td>
            <td>EDIT</td>
            <td>DELETE</td>

        </tr>
        </thead>

        <c:forEach items='${requestScope["categories"]}' var="categories">
        <tbody>
        <tr>
            <td>${categories.getId()}</td>
            <td>${categories.getName()}</td>
            <td>${categories.getStatus()}</td>
            <td><a href="/category?action=editCategory&id=${categories.getId()}"><button type=button class="btn"><i class="fas fa-edit"></i></button></a></td>
            <td><a href="/category?action=deleteCategory&id=${categories.getId()}"><button type=button class="btn"><i class="fas fa-trash"></i></button></a></td>
        </tr>
        </tbody>
        </c:forEach>
</div>
</body>
</html>

