<%--
  Created by IntelliJ IDEA.
  User: ddmeng
  Date: 11/18/14
  Time: 3:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--css style--%>
    <link rel="stylesheet" type="text/css" href="css/login_form.css">
    <%--JavaScript--%>
    <script type="text/javascript" src="js/login_validation.js"></script>
    <title>User Login</title>
</head>
<body>
<%--note: onsubmit="" there is a "return" key word followed--%>
<form onsubmit="return clientValidate()" action="${pageContext.request.contextPath}/success">
    username: <input id="username" type="text" name="username" placeholder="username or email"/><br>
    password: <input id="password" type="password" name="password" placeholder="password"/><br>
    <input type="submit" value="submit" style="cursor:pointer">
    <%--cursor becomes a pointer on the submit button--%>
</form>
</body>
</html>
