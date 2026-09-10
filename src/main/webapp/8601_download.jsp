<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("user") == null) {
        session.setAttribute("productCode", "8601");
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
        
        <h2>MBILLION - Live at GENfest</h2>
        
        <table>
        <tr>
            <th>Song title</th>
            <th>Audio Format</th>
        </tr>
        <tr>
            <td>ANH LÀ THẰNG TỒI (Live at GENfest Presents MBILLION)</td>
            <td>
                <a href="sound/${productCode}/ANH LÀ THẰNG TỒI (Live at GENfest Presents MBILLION).mp3" download>MP3</a>
            </td>
        </tr>
        <tr>
            <td>HIỆN THỰC PHŨ PHÀNG (Live at GENfest Presents MBILLION)</td>
            <td>
                <a href="sound/${productCode}/HIỆN THỰC PHŨ PHÀNG (Live at GENfest Presents MBILLION).mp3" download>MP3</a>
            </td>
        </tr>
        </table>

    </body>
</html>
