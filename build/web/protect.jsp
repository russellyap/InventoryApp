<%@page import="entity.Staff"%>
<%
    Staff user = (Staff) session.getAttribute("user");
    // there is no stored session of user object, redirect to index,
    // else redirect if the user is not admin
    if (user != null) {

        out.println("<h1>Hi " + user.getName() + "!</h1>");
        out.println("<p>How are you today?</p>");

    } else {
        response.sendRedirect("index.jsp");
    }
%>
