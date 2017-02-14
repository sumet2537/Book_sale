<%-- 
    Document   : kaki
    Created on : 26 พ.ย. 2558, 17:10:09
    Author     : brass
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="x-ua-comparible" content="ie=edge">
        <meta name="viewport" content="width=device-width, inititial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>หนังสือ</title>
        <script type="text/javascript" src="./css/boostrap.min.css"></script>
        <script type="text/javascript" src="js/jquery.js"></script>
        <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
        <link rel="stylesheet"  href="./css/style.css">
    </head>
    <body>
        <%@include file="header.jsp"%>
       

        <div>
            <div class="row">
                <div class="container">
                     <h1>เปิดจอง กากีสีขาว / วายูน *จัดส่งฟรี มค 59</h1>
                    <div class="col-md-4">
                        <img class="img" src="./images/dd.jpg" alt="Generic placeholder image" padding-top= "40px" left= "400px"  width="250" height="436">
                    </div>                         
                    <label> <h2>กากีสีขาว</h2></label><br>
                    <label>    <p class="text-danger">ใหม่ล่าสุด</p></label><br>
                    <label>   <p>กากีสีขาว</p></label><br>
                    <label>    "เงิน" ทำให้เธอยอมขายศักดิ์ศรีและยึดความกตัญญููเป็นที่ตั้ง จนทำให้ถูกตราหน้าว่า "กากี"</label><br>
                    <label>**************</label><br>
                    <label>“กากี” ว่าชั่วแล้ว แต่เธอชั่วกว่าเมื่อแต่งงานและสามีตายถึง</label><br>
                    <label>  3 คน เขารักและปรารถนา</label><br>
                    <label>เธอเกินกว่าที่จะฟังคำห้ามของคนอื่น และนั่นทำให้เขาประจักษ์ "เธอคือกากีสำหรับเขาเท่านั้น"</label><br><br>                 
                    <label><h4> <font color="red">ราคา 259 บาท</font></h4></label><br>
                   <label for="select" >จำนวน :</label>
                   <label>    <select class="form-control" id="select" >
                                <option>----เลือก----</option>
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                                <option>6</option>
                       </select>  </label> <br><br>
                    <label>  <p><a class="btn btn-primary" href="#" role="button">ยิบไสตะกร้า &raquo;</a></p></label><br><br><br>

                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
    
</html>
