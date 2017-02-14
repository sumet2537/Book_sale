<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.exceptions.jdbc4.*"%>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connect.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="header.jsp"%>
        <meta http-equiv="x-ua-comparible" content="ie=edge">
	<meta name="viewport" content="width=device-width, inititial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="./css/boostrap.min.css"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
	<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
	<link rel="stylesheet"  href="style.css">
        <title>ระบบร้านขายหนังสือออนไลน์</title>
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
                //การเก็บค่า  parameter จากฟอร์ม frm_member.jsp มาเก็บ
                //  String mem_id = new String (request.getParameter("mem_id"));
                // String username = new String (request.getParameter("username"));
                // String password = new String (request.getParameter("password"));
                // String fname = new String (request.getParameter("fname"));
                // String lname = new String (request.getParameter("lname"));
                //  String address = new String (request.getParameter("address"));
                //  String email = new String (request.getParameter("email"));
                // String phone = new String (request.getParameter("phone"));
                //  String que_forget = new String (request.getParameter("que_forget"));
                //  String ans_forget = new String (request.getParameter("ans_forget"));
                //ชื่อฟิวที่อยู่ในตาราง
                String sql = "INSERT INTO member(mem_id,username,password,fname,lname,address,email,phone,que_forget,ans_forget)"
                        + "value('" + mem_id + "','" + username + "','" + password + "','" + fname + "','" + lname + "','" + address + "','" + email + "','" + phone + "','" + que_forget + "','" + ans_forget + "')";
                if (stmt.executeUpdate(sql) != -1) {
                    out.print("บันทึกข้อมูลแล้ว");
                    out.print("<a href=index.jsp> กลับเข้าสู่หน้าหลัก");
                    // response.sendRedirect("index.jsp");
                } else {
                    out.print("บันทึกข้อมูลไม่สำเร็จ");
                    out.print("<a href=member.jsp> กลับเข้าสู่หน้ากลับเข้าหน้าสมัครสมาชิก");
                }
            } catch (Exception e) {
                out.print(e);
            }
        %>
        </div>
    </body>
</html>
