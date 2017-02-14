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
            <td width = "5"> รหัสหนังสือ </td>   
            <td width = "10">หมวดหมู่หนังสือ</td>
            <td width = "10">เลขมาตรฐานสากล</td>
            <td width = "20">ชื่อผู้แต่ง</td>
            <td width = "15">หัวเรื่อง</td>
            <td width = "5">ราคา</td>
            <td width = "20">รายละเอียด</td>
            <td width = "15">ชื่อรูปภาพ</td>
             <td width = "15">สำนักพิมพ์</td>
              <td width = "5">พิมพ์ครั่งที่</td>
               <td width = "5">จำนวนหน้า</td>
        
               <td width = "3"><center>แก้ไข</center></td>
            <td width = "3"><font color="">ลบ</font></td>
        
        </tr>
        <%
            String sql = "select * from Book";
            Statement stmt = conn.createStatement();
            ResultSet rs = conn.createStatement().executeQuery(sql);

            while (rs.next()) {
        %>

        <tr>
            <td><%=rs.getString("book_id")%> </td>   
            <td><%=rs.getString("bt_id")%></td>
            <td><%=rs.getString("isbn")%></td>
            <td><%=rs.getString("author")%></td>
            <td><%=rs.getString("title")%></td>
            <td><%=rs.getString("price")%></td>
            <td><%=rs.getString("description")%></td>
            <td><%=rs.getString("image")%></td>
            <td><%=rs.getString("publisher")%></td>
            <td><%=rs.getString("time")%></td>
            <td><%=rs.getString("n_page")%></td>
<td> <a onclick="return confirm('คุณต้องการแก้ไขใช่หรือไม่')" href="edit_book.jsp?book_id=<%=rs.getString("book_id")%>"><font color="#009933">แก้ไข</font></a> </td>   
<td> <a onclick="return confirm('คุณต้องการลบใช่หรือไม่')" href="delete_book.jsp?book_id=<%=rs.getString("book_id")%>"><font color="red">ลบ</font></a> </td> 

        </tr>
        <%
            }
        %>
    </table>  
    <center>
        <br>
    </center>
    <br>
        <%@include file="footer.jsp" %>
        </div>
</body>
</html>
