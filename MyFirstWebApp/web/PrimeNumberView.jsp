<%-- 
    Document   : PrimeNumberView
    Created on : Aug 8, 2018, 9:49:35 AM
    Author     : INT303
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-color: #ffeecee0;
                margin-top: 80px;
                
            }
        </style>
    </head>
    <body>
        <h1>Prime Number Application ${pn}</h1> <hr>
        <form action="PrimeNumber" method="post">
            Please enter number : <input type="number" name="number" required min="2"/>&nbsp;
            <input type="submit" value="send"/>
        </form>
        <hr>
        <h4>${pn.number} is ${ pn.primeNumber?"":"not"} Prime Number</h4>
    </body>
</html>
