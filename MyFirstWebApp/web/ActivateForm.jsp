<%-- 
    Document   : ActivateForm
    Created on : Sep 16, 2018, 10:51:37 PM
    Author     : Kridtakom
--%>

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
                                <h3 class="text-center text-info">Activate</h3>
                                <div class="form-group">
                                    <label for="username" class="text-info">Email:</label><br>
                                    <input type="text" name="email" id="username" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="password" class="text-info">Activate key:</label><br>
                                    <input type="text" name="activatekey" id="password" class="form-control">
                                </div>
                                <div class="form-group">
                                    
                                    <input type="submit" name="submit" class="btn btn-info btn-md" value="submit">
                                </div>
                               
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

