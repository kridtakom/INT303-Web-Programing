<%-- 
    Document   : MyAccount
    Created on : Oct 25, 2018, 4:44:55 PM
    Author     : Student
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>My Account Page</h1>
        <P>${status}</p>
        <h2>${account.getName()}</h2>
        <h2>${account.getBalance()}</h2>
        <a href="Deposit">Deposit</a><br>
        <a href="Withdraw">Withdraw</a><br>
        <a href="History">History</a><br>
        <a href="Logout">Logout</a><br>
    </body>
</html>
