<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connect.jsp" %>
<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <body>
        <%            //  Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:8889/ Book_sale", "root", "root");
            Statement stmt = conn.createStatement();

            String mem_id = new String(request.getParameter("mem_id").getBytes("ISO8859-1"), "utf-8");
            String username = new String(request.getParameter("username").getBytes("ISO8859-1"), "utf-8");
            String password = new String(request.getParameter("password").getBytes("ISO8859-1"), "utf-8");
            String fname = new String(request.getParameter("fname").getBytes("ISO8859-1"), "utf-8");
            String lname = new String(request.getParameter("lname").getBytes("ISO8859-1"), "utf-8");
            String address = new String(request.getParameter("address").getBytes("ISO8859-1"), "utf-8");
            String email = new String(request.getParameter("email").getBytes("ISO8859-1"), "utf-8");
            String phone = new String(request.getParameter("phone").getBytes("ISO8859-1"), "utf-8");
            String que_forget = new String(request.getParameter("que_forget").getBytes("ISO8859-1"), "utf-8");
            String ans_forget = new String(request.getParameter("ans_forget").getBytes("ISO8859_1"), "utf-8");

            //memidเอามาจากฟิวของตาราง
            String sql = "update member set mem_id='" + mem_id + "', "
                    + "username='" + username + "',"
                    + "password='" + password + "',"
                    + "fname='" + fname + "',"
                    + "lname='" + lname + "',"
                    + "address='" + address + "',"
                    + "email='" + email + "',"
                    + "phone='" + phone + "',"
                    + "que_forget='" + que_forget + "',"
                    + "ans_forget='" + ans_forget + "' "
                    + "where mem_id=" + mem_id;

            if (stmt.executeUpdate(sql) != -1) {
                out.print("แก้ไขข้อมูลเรียบร้อยแล้ว<br>");
                out.print("<a href=show_member.jsp>กลับหน้าแก้ไข</a>");
            } else {
                out.print("ไม่สามารถแก้ไขขข้อมูลได้");
                out.print("<a href=show_member.jsp>กลับหน้าแก้ไข</a>");
            }

        %>
    </body>
</html>
