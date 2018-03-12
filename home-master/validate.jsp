
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.beans.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validate Page</title>
        <%
            String un = request.getParameter("username");
            String pwd = request.getParameter("password");
            
            try {
                
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sos","sos");
                
                PreparedStatement pst = con.prepareStatement("SELECT USERNAME, PASSWORD FROM REG WHERE USERNAME='"+un+"' AND PASSWORD='"+pwd+"'");
                
                ResultSet rs = pst.executeQuery();  
                
                if(rs.next()) {                    
                    session.setAttribute("username",un);
                    response.sendRedirect("../eval lab cc/web/index.jsp");
                }else {
                    rs.close();
                    pst.close(); 
                    out.println("<script>alert('Invalid Login Credentials..!! ');"
                            + "window.location.href='index.html';</script>");
                }
                
            } catch(ClassNotFoundException e) {
                out.println(e);
            } catch(SQLException e) {
                out.println(e);
       
            }
        %>
        
    </head>
    <body>
    </body>
</html>
