<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connect.jsp" %>
<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <body>
          <%            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
        %> 
        
        <%            //  Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:8889/ Book_sale", "root", "root");
                      Statement stmt = conn.createStatement();

            String username = new String(request.getParameter("username").getBytes("ISO8859-1"), "utf-8");
            String password = new String(request.getParameter("password").getBytes("ISO8859-1"), "utf-8");
            String fname = new String(request.getParameter("fname").getBytes("ISO8859-1"), "utf-8");
            String lname = new String(request.getParameter("lname").getBytes("ISO8859-1"), "utf-8");
            String email = new String(request.getParameter("email").getBytes("ISO8859-1"), "utf-8");
            String phone = new String(request.getParameter("phone").getBytes("ISO8859-1"), "utf-8");

            //memidเอามาจากฟิวของตาราง
            String sql = "update Admin set username='" + username + "', "
                    + "password='" + password + "',"
                    + "fname='" + fname + "',"
                    + "lname='" + lname + "',"
                    + "email='" + email + "',"
                    + "phone='" + phone + "'"
                    + "where username=" + username;

            if (stmt.executeUpdate(sql) != -1) {
                out.print("แก้ไขข้อมูลเรียบร้อยแล้ว<br>");
                out.print("<a href=show_admin.jsp>กลับหน้าแก้ไข</a>");
            } else {
                out.print("ไม่สามารถแก้ไขขข้อมูลได้");
                out.print("<a href=show_admin.jsp>กลับหน้าแก้ไข</a>");
            }

        %>
    </body>
</html>
