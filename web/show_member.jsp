<%@include file="connect.jsp" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header_admin.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <meta http-equiv="x-ua-comparible" content="ie=edge">
	<meta name="viewport" content="width=device-width, inititial-scale=1">
        <title>เเสดงข้อมูลของสมาชิก</title>
         <script type="text/javascript" src="./css/boostrap.min.css"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
	<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
	<link rel="stylesheet"  href="./css/style.css">
        <style>
            body{
                background-color:#eee;
            }
        </style>
    </head>
    <body>
        <div class="container">
    <center>  <h1>เเสดงข้อมูลสมาชิก</h1></center>
    <table border="1" align="center" width="1000px" class="table table-hover">

        <tr bgcolor="#00CCFF" align="center">
            <td width = "5"> รหัสมาชิก </td>   
            <td width = "15">ชื่อเข้าใช้ระบบ</td>
            <td width = "10">รหัสผ่าน</td>
            <td width = "20">ชื่อ</td>
            <td width = "20">สกุล</td>
            <td width = "15">ที่อยู่</td>
            <td width = "10">อีเมล์</td>
            <td width = "10">เบอร์โทร</td>
             <td width = "3">แก้ไข</td>
            <td width = "3"><font color="">ลบ</font></td>
            
        </tr>
        <%
            String sql = "select * from member";
            Statement stmt = conn.createStatement();
            ResultSet rs = conn.createStatement().executeQuery(sql);

            while (rs.next()) {
        %>

        <tr>
            <td><%=rs.getString("mem_id")%> </td>   
            <td><%=rs.getString("username")%></td>
            <td><%=rs.getString("password")%></td>
            <td><%=rs.getString("fname")%></td>
            <td><%=rs.getString("lname")%></td>
            <td><%=rs.getString("address")%></td>
            <td><%=rs.getString("email")%></td>
            <td><%=rs.getString("phone")%></td>
<td> <a onclick="return confirm('คุณต้องการแก้ไขใช่หรือไม่')" href="edit_member.jsp?mem_id=<%=rs.getString("mem_id")%>"><font color="#009933">แก้ไข</font></a> </td>   
<td> <a onclick="return confirm('คุณต้องการลบใช่หรือไม่')" href="delete_member.jsp?mem_id=<%=rs.getString("mem_id")%>"><font color="red">ลบ</font></a> </td> 

        </tr>
        <%
            }
        %>
    </table>  
    <center>
  <br><br><br>
    </center>
        <%@include file="footer.jsp" %>
        </div>
</body>
</html>
