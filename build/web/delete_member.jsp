
<%@page import="java.lang.Thread.State"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="connect.jsp" %>
        <%          
        
        
        String sql = "delete from member where mem_id=" + request.getParameter("mem_id");
        Statement stmt = conn.createStatement();

            if (stmt.executeUpdate(sql) != -1) {
                response.sendRedirect("show_member.jsp");
            }
        %>
    </body>
</html>
