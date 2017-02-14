<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header_admin.jsp"%>
<%@include file="connect.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="x-ua-comparible" content="ie=edge">
        <meta name="viewport" content="width=device-width, inititial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ประเภทหนังสือ</title>
        <script type="text/javascript" src="./css/boostrap.min.css"></script>
        <script type="text/javascript" src="js/jquery.js"></script>
        <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
        <link rel="stylesheet"  href="style.css">
        <style>
            body{
                background-color:#eee;
            }
        </style>
    </head>
    <body>
        <h1 align="center">แก้ไขข้อมูลประเภทหนังสือ</h1>
        <%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%> 
        <%            String sql = "select * from bookType where bt_id=" + request.getParameter("bt_id");

            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            if (rs.next()) {

        %>

        <h1 align="center">เพิ่มประเภทหนังสือ</h1>
        <form name="bookType" style="background-color: " method="post" action="edit_data_booktype.jsp">
            <table align="center">
                <tr>
                    <td>รหัสประเภทหนังสือ :</td>
                    <td><input type="text" name="bt_id" value="<%=rs.getString("bt_id")%>" class="form-control"  placeholder="รหัสประเภทหนังสือ"></td>
                </tr>
                <br>
                <tr>
                    <td>ชื่อประเภทหนังสือ :</td>
                    <td><input type="text" name="bt_name" value="<%=rs.getString("bt_name")%>" class="form-control" placeholder="ชื่อประเภทหนังสือ"></td>
                </tr>
            </table>
            <br>
            <center>
                <input type="submit" value="บันทึก" class="btn btn-primary" name="data">
                <input type="reset" value="ยกเลิก" class="btn btn-warning" name="data">
            </center>
            <br><br>
        </form>
        <br><br><br><br><br><hr />
        <%        
            }
        %>
        <%-- fodter--%>  
        <%@include file="footer.jsp"%>
    </body>
</html>
