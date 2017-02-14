
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> <meta http-equiv="x-ua-comparible" content="ie=edge">
        <meta name="viewport" content="width=device-width, inititial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ร้านขายหนังสือออนไลน์</title>
        <script type="text/javascript" src="./css/boostrap.min.css"></script>
        <script type="text/javascript" src="js/jquery.js"></script>
        <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css"> 
        <link rel="stylesheet"  href="./css/style.css"> 
        <title>JSP Page</title>
    </head>
    <body topmargin="0" leftmargin="0">
        <div class="container">

            <center>   <input name="img" type="image" src="./images/ba.png" width="100%" height="250px"></center>
        </div>
        <div class="container">
            <nav class="navbar navbar-inverse">

                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="sr-only"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index_admin.jsp"><i class="glyphicon glyphicon-home"></i> หน้าหลัก</a>
                </div>
                <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" aria-expanded="false" >
                    <ul class="nav navbar-nav">
                        <li> <a  href="bookType.jsp"><i class="glyphicon glyphicon-book"></i>ประเภทหนังสือ</a></li>
                        <li>  <a  href="Book.jsp"><i class="glyphicon glyphicon-bookmark"></i>เพิ่มข้อมูลหนังสือ</a></li>
                       
                         <li>  <a  href="Admin.jsp"><i class="glyphicon glyphicon-user"></i>สมัครผู้ดูแล</a></li>
                        <li>  <a  href="mndata.jsp"><span class="glyphicon glyphicon-folder-open"></span>จัดการข้อมูล</a></li>
                        <li>  <a  href="#"><i class=""></i>Welcome " <%=session.getAttribute("sfname")%></a></li>
                       
                        <li>  <a  href="index.jsp"><i class="glyphicon glyphicon-log-out"></i> logout</a></li>
                    </ul>
                        <%--  <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-haspopup="true" aria-expanded="false">ช่วยเหลือ <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">วิธีการสั่งซื่อ</a></li>
                                    <li><a href="#">วิธีการชำระเงิน</a></li>
                                    <li><a href="#">วิธีการสมัครสมาชิก</a></li>
                                
                                </ul>
                            </li>
                    --%>
                    <%--
                    <form class="navbar-form navbar-right" role="search" >
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="ค้นหาหนังสือ">
                        </div>
                        <button type="submit" class="btn btn-primary">ค้นหา</button>
                    </form>
--%>

                </div><!-- /.navbar-collapse -->
            </nav>
        </div>             
    </body>
</html>
