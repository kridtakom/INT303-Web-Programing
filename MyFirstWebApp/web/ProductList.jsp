<%-- 
    Document   : ProductList
    Created on : Aug 8, 2018, 3:22:21 PM
    Author     : INT303
--%>

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
                <th>image</th>
                <th>No</th>
                <th>Product Code</th>
                <th>Product Name</th>
                <th>Product Line</th>
                <th>Scale</th>
                <th>Price</th>
                <th>Add to card</th>
                </thead>
                <c:forEach items="${products}"var="p"varStatus="vs">
                    <tr>
                        <td><img src="model-images/${p.productcode}.jpg" width="180"></td>
                        <td>${vs.count}</td>
                        <td><a href="GetProduct?productCode=${p.productcode}">${p.productcode}</a></td>
                        <td>${p.productname}</td>
                        <td>${p.productline.productline}</td>
                        <td>${p.productscale}</td>
                        <td>${p.msrp}</td>
                        <td>
                            <form action="AddItemToCart" method="post">
                                <input type="hidden" value="${p.productcode}" name="productCode"/>
                                <input type="submit" value="Add To Carttt"/>
                            </form>
                            <a href="AddItemToCart?productCode=${p.productcode}">
                                <input type="submit" value="Add To Cart" />
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <script>
                $(document).ready(function () {
                    $('#example').DataTable();
                });
            </script>
        </div>
    </body>
</html>
