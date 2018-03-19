
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
        <title>Updating </title>
        
        <%
            String fn=request.getParameter("firstname");
            String ln=request.getParameter("lastname");
            String em=request.getParameter("email");
            String dob=request.getParameter("dob");
            String ag=request.getParameter("age");
            String mob=request.getParameter("mobile");
            String un=request.getParameter("username");
            String pwd=request.getParameter("password");
            
            try {
                
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","sos","sos");
                PreparedStatement pst0=con.prepareStatement("DELETE FROM REG WHERE USERNAME='"+un+"'");
                ResultSet rs1=pst0.executeQuery();
                rs1.next();
                PreparedStatement pst = con.prepareStatement("INSERT INTO REG(FIRSTNAME,LASTNAME,EMAIL,DOB,AGE,MOBILE,USERNAME,PASSWORD) VALUES('"+fn+"','"+ln+"','"+em+"','"+dob+"',"+ag+",'"+mob+"','"+un+"','"+pwd+"')");
                
                ResultSet rs = pst.executeQuery();  
                
                if(rs.next())
        {%><script>alert("Updated successfull");</script><%
                    response.sendRedirect("user.jsp");
                }
                
            } catch(ClassNotFoundException e) {
                out.println(e);
            } catch(SQLException e) {
                //
                
                
                 %><script>
            window.alert("Failed to update");
            
            </script>
            <%response.sendRedirect("user.jsp");
            }
        %>
    </head>
    <body>
      
    </body>
</html>
