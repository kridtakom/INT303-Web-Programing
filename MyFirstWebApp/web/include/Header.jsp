<%-- 
    Document   : Header
    Created on : Aug 10, 2018, 3:16:37 PM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<table class="table" style="background-color: ${cookie.bgColor.value}">
    <tr>
        <td><a href="index.html" litle="Back to Home">
        <img src="weed.png" width="100">
            </a></td>
            <td><h1 style=" margin-top: 50">${param.title}</h1></td>
        <td>
            <c:if test="${cart!=null}">
                <a href="ShowCart">Your Cart : (${cart.totalQuantity})</a>
            </c:if>
                &nbsp;&nbsp;&nbsp;&nbsp;
            <c:choose>
                <c:when test="${sessionScope.user != null}">
                    Hello <a href="Logout">${sessionScope.user.contactfirstname}</a>
                </c:when>
                <c:otherwise>
                    Hello <a href="Login"> Guest</a>
                </c:otherwise>    
            </c:choose>
        </td>
    </tr>
</table >
<hr>
Session ID : ${cookie.JSESSIONID.value}
<hr>