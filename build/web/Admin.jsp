<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="x-ua-comparible" content="ie=edge">
	<meta name="viewport" content="width=device-width, inititial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin</title>
        <script type="text/javascript" src="./css/boostrap.min.css"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
	<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
	<link rel="stylesheet"  href="./css/style.css">
    </head>
    <body>
        <%@include file="header_admin.jsp"%>
        <div class="container">
        <h1 align="center">สมัครสมาชิก</h1>
        <div class="form-admin">
            <div class="">
                <center>
                    <form name="admin" style="background-color:" method="post" action="insert_admin.jsp">
            <table align="center">
                <tr>
                    <td>รหัสเข้าสู่ระบบ :</td>
                    <td><input style="width: 300px" type="text" name="username" class="form-control" placeholder="รหัสเข้าสู่ระบบ"></td>
                </tr>
                <br>
                  <tr>
                    <td>รหัสผ่าน :</td>
                    <td><input style="width: 200px" type="password" name="password" class="form-control" placeholder="รหัสผ่าน"></td>
                </tr>
                  <tr>
                    <td>ชื่อผู้ดูแลระบบ :</td>
                    <td><input style="width: 250px" type="text" name="fname" class="form-control" placeholder="ชื่อผู้ดูแล"></td>
                </tr>
                  <tr>
                    <td>นามสกุลผู้ดูแล :</td>
                    <td><input style="width: 250px" type="text" name="lname" class="form-control" placeholder="นามสกุลผู้ดูแล"></td>
                </tr>
                  <tr>
                    <td>อีเมล์ :</td>
                    <td><input style="width: 350px" type="text" name="email" class="form-control" placeholder="อีเมล์"></td>
                </tr>
                  <tr>
                    <td>เบอร์โทรศัพท์ :</td>
                    <td><input style="width: 200px" type="text" name="phone" class="form-control" maxlength="10" placeholder="เบอร์โทรศัพท์"></td>
                </tr>          
            </table>
            <br>
            <center>
            <input type="submit" value="ตกลง" class="btn btn-primary" name="data">
            <input type="reset" value="ยกเลิก" class="btn btn-warning" name="data">
            </center>
            <br>
            <br>
        </form>
                </center>
            </div>
        </div>
    <br><br><br><br><hr />
        </div>
        <%-- fodter--%>
<%@include file="footer.jsp"%>
    </body>
</html>
