
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connect.jsp" %>
<%@page import="java.sql.*"%>
<%@include file="header_admin.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="x-ua-comparible" content="ie=edge">
        <meta name="viewport" content="width=device-width, inititial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ฟอร์มแก้ไขข้อมูลสมาชิก</title>
        <script type="text/javascript" src="./css/boostrap.min.css"></script>
        <script type="text/javascript" src="js/jquery.js"></script>
        <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
        <link rel="stylesheet"  href="./css/style.css">
      
    </head>
    <body>
        <h1 align="center">แก้ไขข้อมูลสมาชิก</h1>

        <%
            String sql = "select * from member where mem_id=" + request.getParameter("mem_id");

            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            if (rs.next()) {

        %>
        <form name="member" style="background-color:"  method="post" action="edit_data_member.jsp">
            <table align="center">
                <tr>
                    <td>รหัสสมาชิก :</td>
                    <td><input type="text" name="mem_id" value="<%=rs.getString("mem_id")%>" class="form-control" placeholder="รหัสสมาชิก"></td>
                </tr>
                <br>
                <tr>
                    <td>ลงชื่อใช้ระบบ :</td>
                    <td><input type="text" name="username" value="<%=rs.getString("username")%>" class="form-control" placeholder="ลงชื่อใช้ระบบ"></td>
                </tr>
                <tr>
                    <td>รหัสผ่าน:</td>
                    <td><input type="password" name="password" value="<%=rs.getString("password")%>" class="form-control" placeholder="รหัสผ่าน"></td>
                </tr>
                <tr>
                    <td>ชื่อ :</td>
                    <td><input type="text" name="fname" value="<%=rs.getString("fname")%>" class="form-control" placeholder="ชื่อ"></td>

                </tr>
                <tr>
                    <td>นามสกุล :</td>
                    <td><input type="text" name="lname" value="<%=rs.getString("lname")%>" class="form-control" placeholder="นามสกุล"></td>
                </tr>
                <tr>
                    <td>ที่อยู่ :</td>

                    <td><textarea rows="8" cols="30.10"  name="address" value="<%=rs.getString("address")%>" class="form-control" placeholder="ที่อยู่"></textarea></td>                   
               <script>
   console.log( $('textarea[name=myTextArea]').val() );
 </script>
                </tr>
                <tr>
                    <td>E-mail :</td>
                    <td><input type="text" name="email" value="<%=rs.getString("email")%>" class="form-control" placeholder="อีเมล์"></td>
                </tr>
                <tr>
                    <td>เบอร์โทรศัพท์ :</td>
                    <td><input type="text" name="phone" maxlength="10" value="<%=rs.getString("phone")%>" class="form-control" placeholder="เบอร์โทรศัพท์"></td>
                </tr>
                <tr>
                    <td>คำถามกันลืม :</td>
                    <td><input type="text" name="que_forget" value="<%=rs.getString("que_forget")%>" class="form-control" placeholder="คำถามกันลืม"></td>
                </tr>
                <tr>
                    <td>คำถามกันลืม :</td>
                    <td><input type="text" name="ans_forget" value="<%=rs.getString("ans_forget")%>" class="form-control" placeholder="คำถามกันลืม"></td>
                </tr>
            </table>
            <br>
            <center>
                <input type="submit" value="บันทึก" class="btn btn-primary" name="data" >
                <input type="reset" value="ยกเลิก" class="btn btn-warning" name="data">
            </center>
            <br>
            <br>
        </form>
        <%
            }
        %>
        <%-- fodter--%>
        <%@include file="footer.jsp"%>
    </body>
</html>
