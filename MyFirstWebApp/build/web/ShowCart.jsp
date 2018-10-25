<%-- 
    Document   : ProductList
    Created on : Aug 8, 2018, 3:22:21 PM
    Author     : INT303
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"></link>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css"></link>
       
    </head>
    <body>

        <div class="container">
            <jsp:include page="include/Header.jsp?title=Product Listing::"/>

            <table id="example" class="table">
                <thead>
                <th>No.</th>
                <th>Product Code</th>
                <th>Product Name</th>
                <th>Unit Price</th>
                <th>quantity</th>
                <th>Total Price</th>

                </thead>
                <c:set var="item" value="$sessionScoper.cart.lineItems"/>
                <c:set var="bgColorX" value="lightgray"/>
                <c:set var="bgColorY" value="white"/>
                <c:forEach items="${cart.lineItems}"var="p"varStatus="vs">
                    <tr style="background-color: ${vs.count%2==1?bgColorX:bgColorY}">
                        <td>${vs.count}</td>
                        <td>${p.product.productCode}</td>
                        <td>${p.product.productName}</td>
                        <td>${p.salePrice}</td>
                        <td>${p.quantity}</td>
                        <td >
                            <fmt:formatNumber value="${p.totalPrice}" pattern="#,###.00"/>

                        </td>
                    </tr> 

                </c:forEach>
                <tr>
                    <td>SUM</td>
                    <td colspan="3"></td>
                    <td>${cart.totalQuantity}</td>
                    <td>${cart.totalPrice}</td>
                </tr>
            </table>
            <script>
                $(document).ready(function () {
                    $('#example').DataTable();
                });
            </script>
        </div>
    </body>
</html>
