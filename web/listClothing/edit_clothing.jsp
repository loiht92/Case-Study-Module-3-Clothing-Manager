<%--
  Created by IntelliJ IDEA.
  User: holoi
  Date: 4/20/20
  Time: 19:25
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title style="text-align: center">clothing Management Application</title>
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
        <ul class="navbar-nav ">
            <li class="nav-item " style="font-size: 25px; font-weight: bold; color: white">
                <a class="nav-link" href="${pageContext.request.contextPath}/clothing">HOME</a>
            </li> &emsp;&emsp;

            <li class="nav-item " style="font-size: 25px; font-weight: bold; color: white">
                <a class="nav-link" href="${pageContext.request.contextPath}/clothing?action =listClothing">CLOTHING</a>
            </li> &emsp;&emsp;
        </ul>
    </div>
</nav>

<div align="center">
    <form class="form-horizontal" method="post">
        <div class="form-group">
            <label class="control-label col-sm-2">Name:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name ="name" placeholder="Enter name">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Description:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="description" placeholder="Enter description">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Picture:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name ="picture" placeholder="Enter picture">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" >Price:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name ="price" placeholder="Enter price">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Origin:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name ="origin" placeholder="Enter origin">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Category ID:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name ="category_id" placeholder="Enter category Id">
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
                <button type="submit" class="btn btn-default">Submit</button>
            </div>
        </div>
    </form>

</div>
</body>
</html>
