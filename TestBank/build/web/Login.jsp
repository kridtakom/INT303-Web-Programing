<%-- 
    Document   : Login
    Created on : Oct 25, 2018, 4:31:49 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Login</h1>
        <p>${status}</p>
        
        <form action="Login" method="post">
            <table>
                <tr>
                    <td>Account Id : </td>
                    <td><input type="number" name="id" required></td>
                </tr>
                <tr>
                    <td>Pin : </td>
                    <td><input type="number" name="pin" required></td>
                </tr>
                <tr>
                   
                    <td><input type="submit"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
