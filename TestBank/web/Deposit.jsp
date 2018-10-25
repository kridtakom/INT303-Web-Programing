<%-- 
    Document   : Deposit
    Created on : Oct 25, 2018, 4:50:44 PM
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
        <h1>Deposit</h1>
        <h2>${account.getName()}</h2>
        <h2>${account.getBalance()}</h2>
        <form action="Deposit" method="post">
            <input type="number" name="deposit" required><br>
            <input type="submit" value="deposit" ><br>
        </form>
    </body>
</html>
