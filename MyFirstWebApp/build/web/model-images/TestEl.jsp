<%-- 
    Document   : TestEl
    Created on : Aug 10, 2018, 2:07:46 PM
    Author     : INT303
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
        <h1>Multiplication</h1>
        <form action="TestEl.jsp" method="post">
            <input type="number" name="n" required="">
            <input type="submit" >
        </form>
        <table>
            <tr>
                <td colspan="5">table of ${param.n}</td>
                <c:forEach begin="2" end="12" var="x">
                <tr>
                    <td style="text-align: right">${param.n}</td>
                    <td>x</td>
                    <td style="text-align: right">${x}</td>
                    <td>=</td>
                    <td style="text-align: right">${param.n*x}</td>
                </tr>
            </c:forEach>
        </tr>
    </table>

</body>
</html>
