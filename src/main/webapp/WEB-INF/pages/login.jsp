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
    <style>body {
        background-color: white;
    }

    input {
        background-color: azure;
        font-family: 'Open Sans', sans-serif;
        font-size: medium;
        border-radius: 5px;
        border-color: cornflowerblue;
        margin: 10px;
        padding: 4px;

    }

    /*input has focus: has cursor in it*/
    input:focus {
        background-color: bisque;

    }

    input[type="submit"] {
        background: rgba(114, 212, 202, 1);
        border-radius: 5px;
        border-top: 1px solid #B2ECE6;
        box-shadow: 0 0 0 1px #46A294, 0 2px 2px #808389;
        color: #FFFFFF;
        font-size: 1.5em;
        width: auto;
        text-shadow: 0 1px 2px #21756A;
    }

    input[type="submit"] :hover {
        background: linear-gradient(to bottom, rgba(107, 198, 186, 1) 0%, rgba(57, 175, 154, 1) 100%);
    }

    input[type="submit"]:active {
        box-shadow: inset 0 0 5px #000;
        background: linear-gradient(to bottom, rgba(57, 175, 154, 1) 0%, rgba(107, 198, 186, 1) 100%);
    }


    </style>

    <script type="text/javascript">
        function clientValidate() {
            var username = document.getElementById("username"),
                    password = document.getElementById("password");
            if (false == validateUserName(username.value)) {
                return false;
            }
            if (false == validatePassword(password.value)) {
                return false;
            }
            return true;
        }

        function validateUserName(username) {
            //rules for user name:
            //1.max length: 20;
            //2.only allows numbers and letters, no special character like /,*,% etc.
            if (username.length < 1 || username.length > 20) {
                alert("username's length should between 1 and 20");
                return false;
            }
            var pattern = new RegExp("^[0-9a-zA-Z]{1,20}$");

            var matched = pattern.test(username);
            if (!matched) {
                alert("username only allows numbers and letters, no special character!");
            }

            return matched;
        }
        function validatePassword(password) {
            //rule for password:
            //1.length should at least be 6;
            //2.must have 1 number, 1 upper, 1 lower;
            //3.no special character like /,*,% etc.

            if (password.length < 6) {
                alert("password's length should be at least 6");
                return false;
            }
            var pattern = new RegExp("^(?=.*[0-9].*)(?=.*[A-Z].*)(?=.*[a-z].*).{6,}$");
            var matched = pattern.test(password);

            if (!matched) {
                alert("password should have at least 1 number, 1 upper, 1 lower, no special character!");
            }

            return matched;

        }
    </script>
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
