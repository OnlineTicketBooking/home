<%-- 
    Document   : logout
    Created on : 4 Jan, 2018, 8:42:25 PM
    Author     : saiab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>log out JSP Page</title>
        
        <% response.setHeader("Cache-Control","no-cache"); %>
        <% response.setHeader("Cache-Control","no-store");%>
        <% response.setHeader("Pragma","no-cache");%>
        <% response.setDateHeader("Expires", 0);%>
        
        <% if (session.getAttribute("username")==null){
       response.sendRedirect("../../logandreg/index.html");  
    }%>       
    </head>
    <body>
        <%            
            session.invalidate();            
            response.sendRedirect("../../logandreg/index.html");
            
        %>
    </body>
</html>

