<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("user") == null) {
        session.setAttribute("productCode", "pf02");
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
        <h2>BẬT NÓ LÊN - SOOBIN</h2>
        <table>
        <tr>
            <th>Song title</th>
            <th>Audio Format</th>
        </tr>
        <tr>
            <td>Sẽ Quên Em Nhanh Thôi</td>
            <td><a href="sound/${productCode}/Sẽ Quên Em Nhanh Thôi.mp3" download>MP3</a></td>
        </tr>
        <tr>
            <td>giá như</td>
            <td><a href="sound/${productCode}/giá như.mp3" download>MP3</a></td>
        </tr>
        </table>
    </body>
</html>