<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! int counter = 0; String love = "heart";%>
<% counter += 1;
System.out.println("this is in the console");%>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

</head>
<body>

<h1>The current count is <%= counter %>.</h1>

<p>The current time is <%= java.time.LocalDate.now() %></p>

View the page source!
<p>Your love is represented by <%=love%></p>

<%-- this is a JSP comment, you will *not* see this in the html --%>

<!-- this is an HTML comment, you *will* see this in the html -->

<%@include file="partials/scripts.jsp"%>

</body>
</html>
