<%-- 
    Document   : Task
    Created on : Sep 18, 2018, 10:22:07 AM
    Author     : Kridtakom
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
        <form action="Task" method="post">
            <h1>User :${account.getUsername()} </h1><br>
            New Task : <input type="text" name="newtask"> &nbsp;&nbsp;<input type="submit" value="Add">
        </form>
        <table width="70%">
            <thead>
            <th>Date</th>
            <th>Task</th>
            <th>Status</th>
            </thead>
            <c:forEach items="${taskList}" var="task" varStatus="">
            <tr>
                <td>${task.getCreatedate()}</td>
                <td>${task.getTask()}</td>
                <td>${task.getStatus()}</td>
                
            </tr>
            </c:forEach>
    </table>


</body>
</html>
