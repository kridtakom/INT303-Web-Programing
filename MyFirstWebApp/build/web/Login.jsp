<%-- 
    Document   : Login
    Created on : Sep 7, 2018, 11:43:25 AM
    Author     : INT303
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            p{
                color: red;
            }
        </style>
    </head>
    <body>
        <h1>Login</h1><br>
        <jsp:include page="include/Header.jsp?title=Authentication :"/>
        <form action="Login" method="post">
            username : <input type="number" name="userName" required><br><br>
            password : <input type="password" name="password" required><br><br>
            <input type = "submit" value = "Login"><br><br>
            <p >${message}</p>
        </form>
    </body>
</html>
