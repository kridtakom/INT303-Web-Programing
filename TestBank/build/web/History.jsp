<%-- 
    Document   : History
    Created on : Oct 25, 2018, 6:25:31 PM
    Author     : Student
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table,tr,td{
                border: 1px black solid;
            }
        </style>
    </head>
    <body>
        <h1>History</h1>
        <h2>${account.getName()}</h2>
        <h2>${account.getBalance()}</h2>
        <table>
            
            <tr>
                <th>#</th>
                <th>TimeStamp</th>
                <th>Method</th>
                <th>Amount</th>
                <th>Balance</th>
            </tr>
            <c:forEach items="${history}" var="list" varStatus="hisCount">
            <tr>
                <td>${hisCount.count}</td>
                <td>${list.time}</td>
                <td>${list.method}</td>
                <td>${list.amount}</td>
                <td>${list.balance}</td>
            </tr>
            </c:forEach>
        </table>
        <a href="MyAccount">Back</a>
    </body>
</html>
