<%-- 
    Document   : logout
    Created on : 22 Mar, 2017, 1:01:08 PM
    Author     : 7140r
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           session.invalidate();
                    response.sendRedirect("index.jsp");
            %>
    </body>
</html>
