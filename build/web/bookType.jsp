<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

    </head>
    <body>
        <%@include file="header_admin.jsp"%>
        <h1 align="center">เพิ่มประเภทหนังสือ</h1>
        <form name="bookType" style="background-color: " method="post" action="insert_booktype.jsp">
            <table align="center">
                <tr>
                    <td>รหัสประเภทหนังสือ :</td>
                    <td><input type="text" name="bt_id" style="width: 250px"  class="form-control"  placeholder="รหัสประเภทหนังสือ"></td>
                </tr>
                <br>
                <tr>
                    <td>ชื่อประเภทหนังสือ :</td>
                    <td><input type="text" name="bt_name" style="width: 300px" class="form-control" placeholder="ชื่อประเภทหนังสือ"></td>
                </tr>
            </table>
            <br>
            <center>
            <input type="submit" value="ตกลง" class="btn btn-primary" name="data">
            <input type="reset" value="ยกเลิก" class="btn btn-warning" name="data">
                 </center>
        </form>
            <br><br><br><br>
        <br><br><br><br><br><hr />
      <%-- fodter--%>  
       <%@include file="footer.jsp"%>
    </body>
</html>
