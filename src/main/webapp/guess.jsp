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

    <title>Guess</title>
    <%@ include file="partials/head.jsp"%>
</head>
<body>
<h1>Guessing Game</h1>
<h5>Lets play a game</h5>
<form action="guess" method="POST" class="form-inline">
    <label class="my-1 mr-2" for="num">Preference</label>
    <select name="num" class="custom-select my-1 mr-sm-2" id="num">
        <option selected>Choose...</option>
        <option name="one" value="one">1</option>
        <option name="two" value="two">2</option>
        <option name="three" value="three">3</option>
    </select>

    <button type="submit" class="btn btn-primary my-1">Submit</button>
</form>

</body>
</html>
