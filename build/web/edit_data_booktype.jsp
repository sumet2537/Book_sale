<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connect.jsp" %>
<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%            request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
    %> 
    <body>

        <%            //  Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:8889/ Book_sale", "root", "root");
            Statement stmt = conn.createStatement();

            String bt_id = new String(request.getParameter("bt_id").getBytes("ISO8859-1"), "utf-8");
            String bt_name = new String(request.getParameter("bt_name").getBytes("ISO8859-1"), "utf-8");

            //memidเอามาจากฟิวของตาราง
            String sql = "update bookType set bt_id='" + bt_id + "', "
                    + "bt_name='" + bt_name + "'" + "where bt_id=" + bt_id;

            if (stmt.executeUpdate(sql) != -1) {
                out.print("แก้ไขข้อมูลเรียบร้อยแล้ว<br>");
                out.print("<a href=show_booktype.jsp>กลับหน้าแก้ไข</a>");
            } else {
                out.print("ไม่สามารถแก้ไขขข้อมูลได้");
                out.print("<a href=show_booktype.jsp>กลับหน้าแก้ไข</a>");
            }

        %>

    </body>
</html>
