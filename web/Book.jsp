

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <%@include file="header_admin.jsp"%>
        <h1 align="center">ลงทะเบียนหนังสือ</h1>        
        <div class="">
            <form name="Book" style="background-color:" method="post" action="insert_book.jsp">
                <table class="" align="center">
                    <tr>
                        <td>รหัสหนังสือ :</td>
                        <td> <input style="width: 250px" type="text" name="book_id" class="form-control" placeholder="รหัสหนังสือ"></td>
                    </tr>
                    <br>
                    <tr>
                        <td>หมวดหมู่หนังสือ :</td>
                        <td><input style="width: 200px" type="text" name="bt_id" class="form-control" placeholder="หมวดหมู่หนังสือ"></td>
                    </tr>
                    <tr>
                        <td>เลขมาตรฐานสากล<br>ประจำหนังสือ :</td>
                        <td><input style="width: 300px" type="text" name="isbn" class="form-control" placeholder="เลขมาตรฐานสากลประจำหนังสือ"></td>
                    </tr>
                    <tr>
                        <td>ชื่อผู้แต่ง :</td>
                        <td><input style="width: 350px" type="text" name="author" class="form-control" placeholder="ชื่อผู้แต่ง"></td>
                    </tr>
                    <tr>
                        <td>หัวเรื่อง :</td>
                        <td><input style="width: 300px" type="text" name="title" class="form-control" placeholder="หัวเรื่อง"></td>
                    </tr>
                    <tr>
                        <td>ราคา :</td>
                        <td><input style="width: 150px" type="text" name="price" class="form-control" placeholder="ราคา"></td>
                    </tr>
                    <tr>
                        <td>รายละเอียด :</td>
                        <td><input type="text" style="width: 500px" style="height:40px"  name="description" class="form-control" placeholder="รายละเอียด"></td>
                    </tr>
                    <tr>
                        <td>ชื่อรูปภาพ :</td>
                        <td><input style="width: 300px" type="text" name="image" class="form-control" placeholder="ชื่อรูปภาพ"></td>
                    </tr>
                    <tr>
                        <td>สำนักพิมพ์ :</td>
                        <td><input style="width: 320px" type="text" name="publisher" class="form-control" placeholder="สำนักพิมพ์"></td>
                    </tr>
                    <tr>
                        <td>พิมพ์ครั่งที่ :</td>
                        <td><input style="width: 100px" type="text" name="time" class="form-control" placeholder="พิมพ์ครั่งที่"></td>
                    </tr>
                    <tr>
                        <td>จำนวนหน้า :</td>
                        <td><input style="width: 150px" type="text" name="n_page" class="form-control" placeholder="จำนวนหน้า"></td>
                    </tr>
                </table>
                <br>
                <center>
                    <input type="submit" value=เพิ่มหนังสือ class="btn btn-primary" name="data">
                    <input type="reset" value="ยกเลิก" class="btn btn-warning" name="data">              
                </center>
                <br>
                <br>
            </form>
        </div>
    <br><br><br><br>
        <%-- fodter--%>
<%@include file="footer.jsp"%>
</body>
</html>
