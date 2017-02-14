<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>


<!DOCTYPE html>
<html>
    <head> 
         <meta http-equiv="x-ua-comparible" content="ie=edge">
	<meta name="viewport" content="width=device-width, inititial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
    <style>
        body{
            background-color:#eee ;
        } 
    </style>
    <body>
     <%if (request.getParameter("Action_admin") != null) {

                Connection connect = null;
                Statement s = null;

                try {
                    Class.forName("com.mysql.jdbc.Driver");

                    connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:8889/Book_sale", "root", "root");


                    String username = request.getParameter("txtUsername");
                    String password = request.getParameter("txtPassword");

                    s = connect.createStatement();

                    String sql = "SELECT * FROM  Admin WHERE "
                            + " username = '" + username + "' AND "
                            + " password = '" + password + "' ";

                    ResultSet rec = s.executeQuery(sql);

                    if (!rec.next()) {
                        out.print("<br><center><font color=red>รหัสผ่าน หรือ พาสเวิร์ด ไม่ถูกต้อง!</font></center>");
                    } else {
                        rec.first();
                        session.setAttribute("sfname", rec.getString("fname"));
                        response.sendRedirect("../index_admin.jsp");
                    }

                } catch (Exception e) {
                    // TODO Auto-generated catch block
                    out.println(e.getMessage());
                    e.printStackTrace();
                }

                try {
                    if (s != null) {
                        s.close();
                        connect.close();
                    }
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    out.println(e.getMessage());
                    e.printStackTrace();
                }

            }

        %>
        <br><br>
    <center>
        <form name="frmLogin" method="post" action="login_admin.jsp?Action_admin=Login">
            กรุณา ล็อกอิน เพื่อเข้าสู่ระบบ (สำหรับผู้ดูแลระบบ)<br><br>
            <table border="0" style="width: 300px">
                <tbody>
                    <tr>
                        
                        <td>
                            <input name="txtUsername" style="width: 300px" type="text" id="txtUsername" placeholder="กรุณากรอกรหัสผู้ดูแลระบบ">
                        </td>
                    </tr>
                    <tr>
                       
                        <td><input name="txtPassword" style="width: 300px" type="password" id="txtPassword" placeholder="กรุณากรอกรหัสผ่าน">
                        </td>
                    </tr>
                </tbody>
            </table>
            <br>
            <input type="submit" name="Submit" value="เข้าสู่ระบบ">
            <input type="reset" name="Reset" value="ยกเลิก">
            
        </form>
    </center>
    </body>
</html>