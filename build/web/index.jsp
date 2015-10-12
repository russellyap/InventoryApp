<%-- 
    Document   : index
    Created on : Oct 12, 2015, 6:04:44 PM
    Author     : boobooloves
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Welcome to Inventory App</h1>
        <form action="process-login.jsp" method="POST">
            Username:<input type="text" name="username"></br>
            Password:<input type="password" name="password">
            <input type="submit" value="Login">
        </form>
        <p style="color:  crimson">
            <%
                String error = (String)request.getAttribute("error");
                if(error != null) {
                    out.println(error);
                }
            %>
            
        </p>
    </body>
</html>
