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
        <div>
            <div class="row">
                <div class="container">
                    <center><br><br>
                    <label><a class="btn btn-success" href="show_booktype.jsp" role="button"><h2>จัดการข้อมูลประเภทหนังสือ</h2></a></label><br><br><br><br>
                    <label><a class="btn btn-success" href="show_book.jsp" role="button"><h2>จัดการข้อมูลหนังสือ</h2></a></label><br><br><br><br>
                    <label><a class="btn btn-success" href="show_member.jsp" role="button"><h2>จัดการข้อมูลสมาชิก</h2></a></label><br><br><br><br>
                    <label><a class="btn btn-success" href="show_admin.jsp" role="button"><h2>จัดการข้อมูลแอดมิน</h2></a></label><br><br><br><br>
                    <br><br><br><br><br><br><br><br><br><br><br><br>
                    </center>
                </div>
            </div>
        </div>


        <%@include file="footer.jsp" %>
    </body>
</html>
