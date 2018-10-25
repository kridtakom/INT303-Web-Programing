<%-- 
    Document   : Register
    Created on : Sep 14, 2018, 10:52:01 AM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    </head>
    <body>
        <div id="login">
            <h3 class="text-center text-white pt-5">Login form</h3>
            <div class="container">
                <div id="login-row" class="row justify-content-center align-items-center">
                    <div id="login-column" class="col-md-6">
                        <div id="login-box" class="col-md-12">
                            <form id="login-form" class="form" action="Register" method="post">
                                <c:choose>
                                    <c:when test="${email == null}">
                                        <h3 class="text-center text-info">Register</h3>
                                    </c:when>
                                    <c:otherwise>
                                        <h3 class="text-center text-info">Activate</h3>
                                    </c:otherwise>
                                </c:choose>

                                <div class="form-group"> 
                                    <label for="username" class="text-info">Email:</label><br>
                                    <c:choose>
                                        <c:when test="${email == null}">
                                            <input type="text" name="email" id="username" class="form-control">
                                        </c:when>
                                        <c:otherwise>
                                            <input type="text" name="email" id="username" class="form-control" value="${email}">
                                        </c:otherwise>
                                    </c:choose>  
                                </div>
                                <div class="form-group">
                                    <label for="password" class="text-info">Password:</label><br>
                                    <c:choose> 
                                        <c:when test="${activatekey == null}">
                                            <input type="password" name="password" id="password" class="form-control">
                                        </c:when>
                                        <c:otherwise>
                                            <input type="text" name="activatekey" id="password" class="form-control" value="${activatekey}">
                                        </c:otherwise>
                                    </c:choose> 
                                </div>
                                <div class="form-group">
                                    <c:choose>
                                        <c:when test="${email == null}">
                                            <input type="submit" name="submit" class="btn btn-info btn-md" value="submit">
                                        </c:when>
                                        <c:otherwise>
                                        </c:otherwise>
                                    </c:choose> 
                                    </div>
                                    <c:if test="${email != null}">
                                        <a href="http://localhost:8080/MyFirst/ActivateUser?email=${email}&activatekey=${activatekey}">Activate Now</a>
                                    </c:if>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </body>
    </html>

