<%@page import="entity.StaffNotFoundException"%>
<%@page import="entity.Staff"%>
<%@page import="dao.StaffDAO"%>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String error = null;
    if (username != null && password != null) {
        StaffDAO staffDAO = new StaffDAO();
        try {
            Staff staff = staffDAO.getStaff(username);
            if (staff.getPassword().equals(password)) {
                session.setAttribute("user", staff);
                if (staff.isAdmin()) {
                    response.sendRedirect("admin.jsp");
                } else {
                    response.sendRedirect("main.jsp");
                }
                return;
            }
        } catch (StaffNotFoundException e) {

        }

        error = "Invalid username/password!";
        request.setAttribute("error", error);
        RequestDispatcher view = request.getRequestDispatcher("index.jsp");
        view.forward(request, response);
    }


%>