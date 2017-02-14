
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> <meta http-equiv="x-ua-comparible" content="ie=edge">
        <meta name="viewport" content="width=device-width, inititial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ร้านขายหนังสือออนไลน์</title>
        <script type="text/javascript" src="./css/boostrap.min.css"></script>
        <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
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
                    <a class="navbar-brand" href="index.jsp"><i class="glyphicon glyphicon-home"></i> หน้าหลัก</a>
                </div>
                <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" aria-expanded="false" >
                    <ul class="nav navbar-nav">
                        <li> <a  href="promotion1.jsp"><i class="glyphicon glyphicon-gift"></i>โปรโมชั้น</a></li>
                        <li>  <a  href="index.jsp"><i class="glyphicon glyphicon-inbox"></i>สินค้า</a></li>
                        <li>  <a  href="wt1.jsp"><i class="glyphicon glyphicon-shopping-cart"></i>วิธีการสั่งซื่อ</a></li>
                         <li>  <a  href="tt1.jsp"><i class="glyphicon glyphicon-phone-alt"></i>ติดต่อเรา</a></li>
                        <li>  <a  href="member.jsp"><span class="glyphicon glyphicon-user"></span>สมัครสมาชิก</a></li>
                        
                        <li>  <a link rel="admin" href="./admin/login_user.jsp"><i class="glyphicon glyphicon-log-in"></i>login</a></li>
                        <li>  <a  href="#"><i class="glyphicon glyphicon-log-out"></i> logout</a></li>                    
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                       <li>  <a link rel="admin" href="./admin/login_admin.jsp"><i class="glyphicon glyphicon-log-in"></i>Admin</a></li> 
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
                   
                    <form class="navbar-form navbar-right" role="search" >
                        <div class="form-group">
                            <input type="text" style="width: 150px" class="form-control" placeholder="ค้นหาหนังสือ">
                        </div>
                        <button type="submit" class="btn btn-primary">ค้นหา</button>
                    </form>
                </div><!-- /.navbar-collapse -->
            </nav>
        </div>             
    </body>
</html>
