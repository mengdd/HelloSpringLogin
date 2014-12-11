<%--
  Created by IntelliJ IDEA.
  User: ddmeng
  Date: 11/18/14
  Time: 11:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="../../resources/css/forms.css">
    <%--FIX ME: I tried many ways but I couldn't set the CSS path right.--%>
    <title>Hello Login</title>
</head>
<body>

<h1>Welcome to this page!</h1>

<h1><%= "request.getContextPath(): " + request.getContextPath() %>
</h1>>

<a href="${pageContext.request.contextPath}/login">Click Me to Login!</a>

</body>
</html>
