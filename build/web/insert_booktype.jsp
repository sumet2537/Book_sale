<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.exceptions.jdbc4.*"%>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connect.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="header_admin.jsp"%>
        <meta http-equiv="x-ua-comparible" content="ie=edge">
	<meta name="viewport" content="width=device-width, inititial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="./css/boostrap.min.css"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
	<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
	<link rel="stylesheet"  href="style.css">
        <title>สมัครสมาชิก</title>
    </head>
    <body>
        <div class="container">
        <% request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
        %>

        <%
            try {
                //การ connect กับฐานข้อมูล
                Class.forName("com.mysql.jdbc.Driver");
                //  Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:8889/ Book_sale", "root", "root");
                Statement stmt = conn.createStatement();

                String bt_id = new String(request.getParameter("bt_id").getBytes("ISO8859-1"), "utf-8");
                String bt_name = new String(request.getParameter("bt_name").getBytes("ISO8859-1"), "utf-8");
                
                String sql = "INSERT INTO bookType(bt_id,bt_name)"
                        + "value('" + bt_id + "','" + bt_name + "')";
                if (stmt.executeUpdate(sql) != -1) {
                    out.print("บันทึกข้อมูลแล้ว");
                    out.print("<a href=bookType.jsp> กลับเข้าสู่หน้าเพิ่มข้อมูลหนังสือ");
                    // response.sendRedirect("index.jsp");
                } else {
                    out.print("บันทึกข้อมูลไม่สำเร็จ");
                }
            } catch (Exception e) {
                out.print(e);
            }
        %>
        </div>
    </body>
</html>
