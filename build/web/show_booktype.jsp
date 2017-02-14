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
        <title>เเสดงข้อมูลประเภทหนังสือ</title>
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
    <center>  <h1>เเสดงข้อมูลประเภทหนังสือ</h1></center>
    <table border="1" align="center" width="1000px" class="table table-hover">

        <tr bgcolor="#00CCFF" align="center">
            <td width = "20"> รหัสหนังสือ </td>   
            <td width = "20">หมวดหมู่หนังสือ</td>
            
        
               <td width = "3"><center>แก้ไข</center></td>
            <td width = "3"><font color="">ลบ</font></td>
        
        </tr>
        <%
            String sql = "select * from bookType";
            Statement stmt = conn.createStatement();
            ResultSet rs = conn.createStatement().executeQuery(sql);

            while (rs.next()) {
        %>

        <tr>
            <td><%=rs.getString("bt_id")%> </td>   
            <td><%=rs.getString("bt_name")%></td>
          
<td> <a onclick="return confirm('คุณต้องการแก้ไขใช่หรือไม่')" href="edit_booktype.jsp?bt_id=<%=rs.getString("bt_id")%>"><font color="#009933">แก้ไข</font></a> </td>   
<td> <a onclick="return confirm('คุณต้องการลบใช่หรือไม่')" href="delete_booktype.jsp?bt_id=<%=rs.getString("bt_id")%>"><font color="red">ลบ</font></a> </td> 

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
