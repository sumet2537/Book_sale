<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="connect.jsp" %>
<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <body>
        <%            //  Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:8889/ Book_sale", "root", "root");
            Statement stmt = conn.createStatement();
            String book_id = new String(request.getParameter("book_id").getBytes("ISO8859-1"), "utf-8");
            String bt_id = new String(request.getParameter("bt_id").getBytes("ISO8859-1"), "utf-8");
            String isbn = new String(request.getParameter("isbn").getBytes("ISO8859-1"), "utf-8");
            String author = new String(request.getParameter("author").getBytes("ISO8859-1"), "utf-8");
            String title = new String(request.getParameter("title").getBytes("ISO8859-1"), "utf-8");
            String price = new String(request.getParameter("price").getBytes("ISO8859-1"), "utf-8");
            String description = new String(request.getParameter("description").getBytes("ISO8859-1"), "utf-8");
            String image = new String(request.getParameter("image").getBytes("ISO8859-1"), "utf-8");
            String publisher = new String(request.getParameter("publisher").getBytes("ISO8859-1"), "utf-8");
            String time = new String(request.getParameter("time").getBytes("ISO8859-1"), "utf-8");
            String n_page = new String(request.getParameter("n_page").getBytes("ISO8859-1"), "utf-8");
            //memidเอามาจากฟิวของตาราง
            String sql = "update Book set book_id='" + book_id + "', "
                    + "bt_id='" + bt_id + "',"
                    + "isbn='" + isbn + "',"
                    + "author='" + author + "',"
                    + "title='" + title + "',"
                    + "price='" + price + "',"
                    + "sescription='" + description + "',"
                    + "image='" + image + "',"
                    + "publisher='" + publisher + "',"
                    + "time='" + time + "',"
                    + "n_page='" + n_page + "'"
                    + "where book_id=" + book_id;

            if (stmt.executeUpdate(sql) != -1) {
                out.print("แก้ไขข้อมูลเรียบร้อยแล้ว<br>");
                out.print("<a href=show_book.jsp>กลับหน้าแก้ไข</a>");
            } else {
                out.print("ไม่สามารถแก้ไขขข้อมูลได้");
                out.print("<a href=show_book.jsp>กลับหน้าแก้ไข</a>");
            }

        %>
    </body>
</html>
