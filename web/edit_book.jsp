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
        <title>ฟอร์มการลงทะเบียนหนังสือ</title>
        <script type="text/javascript" src="./css/boostrap.min.css"></script>
        <script type="text/javascript" src="js/jquery.js"></script>
        <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
        <link rel="stylesheet"  href="./css/style.css">
        <%--   <style>
             body{
                 background-color:#eee;
             }
         </style> --%>
    </head>
    <body>   
        <h1 align="center">แก้ไขข้อมูลหนังสือ</h1>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%> 
        <%            String sql = "select * from Book where book_id=" + request.getParameter("book_id");

            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            if (rs.next()) {

        %>

        <h1 align="center">ลงทะเบียนหนังสือ</h1>        
        <div class="form-book">
            <form name="Book" style="background-color:" method="post" action="edit_data_book.jsp">
                <table class="t1" align="center">
                    <tr>
                        <td>รหัสหนังสือ :</td>
                        <td> <input type="text" name="book_id" value="<%=rs.getString("book_id")%>" class="form-control" placeholder="รหัสหนังสือ"></td>
                    </tr>
                    <br>
                    <tr>
                        <td>หมวดหมู่หนังสือ :</td>
                        <td><input type="text" name="bt_id" value="<%=rs.getString("bt_id")%>" class="form-control" placeholder="หมวดหมู่หนังสือ"></td>
                    </tr>
                    <tr>
                        <td>เลขมาตรฐานสากล<br>ประจำหนังสือ :</td>
                        <td><input type="text" name="isbn" value="<%=rs.getString("isbn")%>" class="form-control" placeholder="เลขมาตรฐานสากลประจำหนังสือ"></td>
                    </tr>
                    <tr>
                        <td>ชื่อผู้แต่ง :</td>
                        <td><input type="text" name="author" value="<%=rs.getString("author")%>" class="form-control" placeholder="ชื่อผู้แต่ง"></td>
                    </tr>
                    <tr>
                        <td>หัวเรื่อง :</td>
                        <td><input type="text" name="title" value="<%=rs.getString("title")%>" class="form-control" placeholder="หัวเรื่อง"></td>
                    </tr>
                    <tr>
                        <td>ราคา :</td>
                        <td><input type="text" name="price" value="<%=rs.getString("price")%>" class="form-control" placeholder="ราคา"></td>
                    </tr>
                    <tr>
                        <td>รายละเอียด :</td>
                        <td><textarea rows="8" cols="21.10" name="description" value="<%=rs.getString("description")%>" class="form-control" placeholder="รายละเอียด"> </textarea></td>
                    </tr>
                    <tr>
                        <td>ชื่อรูปภาพ :</td>
                        <td><input type="text" name="image" value="<%=rs.getString("image")%>" class="form-control" placeholder="ชื่อรูปภาพ"></td>
                    </tr>
                    <tr>
                        <td>สำนักพิมพ์ :</td>
                        <td><input type="text" name="publisher" value="<%=rs.getString("publisher")%>" class="form-control" placeholder="สำนักพิมพ์"></td>
                    </tr>
                    <tr>
                        <td>พิมพ์ครั่งที่ :</td>
                        <td><input type="text" name="time" value="<%=rs.getString("time")%>" class="form-control" placeholder="พิมพ์ครั่งที่"></td>
                    </tr>
                    <tr>
                        <td>จำนวนหน้า :</td>
                        <td><input type="text" name="n_page" value="<%=rs.getString("n_page")%>" class="form-control" placeholder="จำนวนหน้า"></td>
                    </tr>
                </table>
                <br>
                <center>
                    <input type="submit" value=บันทึก class="btn btn-primary" name="data">
                    <input type="reset" value="ยกเลิก" class="btn btn-warning" name="data">              
                </center>
                <br>
                <br>
            </form>
        </div>
        <%
            }
        %>
        <%-- fodter--%>
        <%@include file="footer.jsp"%>
    </body>
</html>
