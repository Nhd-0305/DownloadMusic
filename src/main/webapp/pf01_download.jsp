<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("user") == null) {
        session.setAttribute("productCode", "pf01");
        response.sendRedirect("register.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Murach's Java Servlets and JSP</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
        <h1>Downloads</h1>
        <h2>Nu Than Mat Trang - Bui Lan Huong</h2>
        <table>
        <tr>
            <th>Song title</th>
            <th>Audio Format</th>
        </tr>
        <tr>
            <td>Kiếp Duyên Tình (Hộ Linh Tráng Sĩ Original Sound Track)</td>
            <td><a href="sound/${productCode}/Kiếp Duyên Tình (Hộ Linh Tráng Sĩ Original Sound Track).mp3" download>MP3</a></td>
        </tr>
        <tr>
            <td>Một Mình Ở Đây</td>
            <td><a href="sound/${productCode}/Một Mình Ở Đây.mp3" download>MP3</a></td>
        </tr>
        </table>
    </body>
</html>