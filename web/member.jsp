
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="x-ua-comparible" content="ie=edge">
	<meta name="viewport" content="width=device-width, inititial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ฟอร์มการลงทะเบียนข้อมูลสมาชิก</title>
        <script type="text/javascript" src="./css/boostrap.min.css"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
	<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
	<link rel="stylesheet"  href="./css/style.css">
    </head>
    <body>
        <%@include file="header.jsp"%>
        <h1 align="center">ลงทะเบียนสมาชิก</h1>
        <form name="member" style="background-color: "  method="post" action="insert_member.jsp">
            <table align="center">
                <tr>
                    <td>รหัสสมาชิก :</td>
                    <td><input style="width: 200px" type="text" name="mem_id" class="form-control" placeholder="รหัสสมาชิก"></td>
                </tr>
                <br>
                <tr>
                    <td>ลงชื่อใช้ระบบ :</td>
                    <td><input style="width: 250px" type="text" name="username" class="form-control" placeholder="ลงชื่อใช้ระบบ"></td>
                </tr>
                <tr>
                    <td>รหัสผ่าน:</td>
                    <td><input style="width: 300px" type="password" name="password" class="form-control" placeholder="รหัสผ่าน"></td>
                </tr>
                <tr>
                    <td>ชื่อ :</td>
                    <td><input style="width: 250px" type="text" name="fname" class="form-control" placeholder="ชื่อ"></td>
                    
                </tr>
                <tr>
                    <td>นามสกุล :</td>
                    <td><input style="width: 250px" type="text" name="lname" class="form-control" placeholder="นามสกุล"></td>
                </tr>
                <tr>
                    <td>ที่อยู่ :</td>
                    <td><input  style="width: 500px" name="address" class="form-control" placeholder="ที่อยู่"></td>                   
                </tr>
                <tr>
                    <td>E-mail :</td>
                    <td><input style="width: 350px" type="text" name="email" class="form-control" placeholder="อีเมล์"></td>
                </tr>
                <tr>
                    <td>เบอร์โทรศัพท์ :</td>
                    <td><input style="width: 200px" type="text" name="phone" class="form-control" maxlength="10" placeholder="เบอร์โทรศัพท์"></td>
                </tr>
                <tr>
                    <td>คำถามกันลืม :</td>
                    <td><input style="width: 300px" type="text" name="que_forget" class="form-control" placeholder="คำถามกันลืม"></td>
                </tr>
                <tr>
                    <td>คำถามกันลืม :</td>
                    <td><input style="width: 300px" type="text" name="ans_forget" class="form-control" placeholder="คำถามกันลืม"></td>
                </tr>
            </table>
            <br>
            <center>
                <input type="submit" value="ลงทะเบียน" class="btn btn-primary" name="data" >
                <input type="reset" value="ยกเลิก" class="btn btn-warning" name="data">
            </center>
            <br>
            <br>
        </form>
    <br><br><br><br>
        <%-- fodter--%>
       <%@include file="footer.jsp"%>
    </body>
</html>
