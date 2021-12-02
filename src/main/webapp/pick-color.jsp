<%--
  Created by IntelliJ IDEA.
  User: dezmonemusgrove
  Date: 12/2/21
  Time: 9:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="partials/navbar.jsp"%>
    <title>Title</title>
    <%@ include file="partials/head.jsp"%>
</head>
<body>
<h1>Welcome to Color Candidate</h1>
<h5>Feel free to choose a color</h5>
<form action="pick-color" method="POST">
    <div class="form-row align-items-center">
        <div class="col-auto">
            <label class="sr-only" for="color">Color</label>
            <input name="color" type="text" class="form-control mb-2" id="color" placeholder="Any Color">
        </div>
        <div class="col-auto">
            <button type="submit" class="btn btn-primary mb-2">Submit</button>
        </div>
    </div>
</form>

</body>
</html>
