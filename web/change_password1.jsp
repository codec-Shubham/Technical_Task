<%@ page import="java.sql.*;"%>
<jsp:useBean id="cn" scope="page" class="mm.Conn1" />

<% 
   String pass=request.getParameter("cpass");
   String id=(String)session.getAttribute("uid");
   String npass=request.getParameter("npass");
   ResultSet rs=cn.executeQuery("select * from users where uid='"+id+"'");
   if(rs.next()){
       String gpass=rs.getString("admin_pass");
       String upass=rs.getString("password");
       out.print(pass+"<br>");
          out.print(gpass+"<br>");
             out.print(id+"<br>");
      if(pass.equals(gpass))
          {
       int q=cn.executeUpdate("update users set admin_pass='"+npass+"' where uid='"+id+"'");
       if(q>0){
          response.sendRedirect("admin_homepage.jsp"); 
       }
       else{
           response.sendRedirect("error.jsp");
        }
      }else if(pass.equals(upass)){
          
          int q1=cn.executeUpdate("update users set password ='"+npass+"' where uid='"+id+"'");
       if(q1>0){
          response.sendRedirect("index.jsp"); 
       }
       else{
           response.sendRedirect("error.jsp");
        }
       }
        
     else{
       response.sendRedirect("error1.jsp");
        }
     }
    
   
   %>