<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connect.jsp" %>
<%@include file="header.jsp"%>
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

    <center>  <h1>เเสดงข้อมูลสมาชิก</h1></center>
    <table border="1" align="center" width="1000px" class="table table-hover">

        <%-- หัวตราราง --%>
        <tr bgcolor="#00CCFF" align="center"  >
            <td width = "5"> รหัสมาชิก </td>   
            <td width = "10">ชื่อเข้าใช้ระบบ</td>
            <td width = "10">รหัสผ่าน</td>
            <td width = "20">ชื่อ</td>
            <td width = "20">สกุล</td>
            <td width = "10">ที่อยู่</td>
            <td width = "10">อีเมลล์</td>
            <td width = "10">เบอร์โทรศัพท์</td>
            <td width = "5">แก้ไข</td>


        </tr>
        <%            String sql = "select * from member";
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
            <td> <a onclick="return confirm('คุณต้องการแก้ไขใช่หรือไม่')" href="edit_member.jsp?mem_id=<%=rs.getString("mem_id")%>">แก้ไข</a> </td>   
        </tr>
        <%
            }
        %>
    </table>  
    <center>
        <br>
        <a href="http://localhost:8080/Book_sale/#">กลับหน้าหลัก</a>
    </center>
    <%@include file="footer.jsp" %>
</body>
</html>
