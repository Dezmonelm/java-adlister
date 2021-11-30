<%--
  Created by IntelliJ IDEA.
  User: dezmonemusgrove
  Date: 11/30/21
  Time: 2:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
if (request.getMethod().equalsIgnoreCase("POST")){
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if (username.equals("admin") && password.equals("password")){
        response.sendRedirect("/profile.jsp");
    } else {
        response.sendRedirect("/login.jsp");
    }
}
%>

<html>
<head>
    <title>Title</title>
<%@ include file="partials/bootstrapHead.jsp"%>

</head>
<body>
<%@ include file="partials/navbar.jsp"%>
<form action="/login.jsp" method="post">
    <div class="form-group">
        <label for="username">Username</label>
        <input name="username" type="username" class="form-control" id="username" aria-describedby="usernameHelp">
        <small id="usernameHelp" class="form-text text-muted">We'll never share your username with anyone else.</small>
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <input name="password" type="password" class="form-control" id="exampleInputPassword1">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>

<%@ include file="partials/scripts.jsp" %>

</body>
</html>
