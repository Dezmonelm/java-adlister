<%--
  Created by IntelliJ IDEA.
  User: dezmonemusgrove
  Date: 11/30/21
  Time: 12:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%! int visited = 0; %>
<%

if (visited == 0){
    request.setAttribute("hasUserBeenHere", false);
    } else {
    request.setAttribute("hasUserBeenHere", true);
    }
    visited++;

%>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

</head>
<body>
<%@include file="partials/navbar.jsp"%>

<c:choose>

    <c:when test="${hasUserBeenHere}">
        <h2>Welcome Back</h2>
    </c:when>
    <c:otherwise>
        <h2>Hello For The First Time</h2>
    </c:otherwise>

</c:choose>

<%@include file="partials/scripts.jsp"%>
</body>
</html>
