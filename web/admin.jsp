<%-- 
    Document   : admin
    Created on : Oct 12, 2015, 6:24:16 PM
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
        <%@include file="adminProtect.jsp" %>
        <div>Since you are an admin, you can choose to do certain things:</div> </br>
        <a href="addNewItem.jsp">Add a new item into inventory</a></br>
        OR </br>
        <a href="grantAdminRights.jsp">Grant someone else an admin right</a> </br>
        <p> If not, click <a href="inventory.jsp">here</a> to proceed to inventory page </p>
        
        Nothing to do here? <a href="logout.jsp">logout</a>

    </body>
</html>
