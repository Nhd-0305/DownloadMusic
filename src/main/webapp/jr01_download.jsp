<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("user") == null) {
        session.setAttribute("productCode", "jr01");
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
        <h2>RPT MCK</h2>
        <table>
        <tr>
            <th>Song title</th>
            <th>Audio Format</th>
        </tr>
        <tr>
            <td>Chỉ Một Đêm Nữa Thôi (feat. tlinh) — album "99%"</td>
            <td><a href="sound/${productCode}/Chỉ Một Đêm Nữa Thôi.mp3" download>MP3</a></td>
        </tr>
        <tr>
            <td>Nếu Như Ta Chẳng Còn (feat. A$AP Ướt Mi) — album "HVL"</td>
            <td><a href="sound/${productCode}/Nếu Như Ta Chẳng Còn (feat. A$AP Ướt Mi).mp3" download>MP3</a></td>
        </tr>
        </table>
    </body>
</html>