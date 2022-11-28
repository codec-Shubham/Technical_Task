
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

import javax.servlet.http.*;


public class login extends HttpServlet { 
   public void doPost(HttpServletRequest request,  
    HttpServletResponse response)  
  throws ServletException, IOException { 
   
PrintWriter pw = response.getWriter();
    response.setContentType("text/html"); 
    PrintWriter out = response.getWriter(); 


 HttpSession session = request.getSession(true); 
    out.print("<B>"); 
       String uname =request.getParameter("username");
       String password=request.getParameter("password");
       out.println(uname);
       out.println(password);
       try{ 
      Class.forName("com.mysql.jdbc.Driver");
     
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop_pro", "root", "");
   

   Statement st=con.createStatement();


  ResultSet rs=st.executeQuery("select * from users where username='"+uname+"' and password='"+password+"'");
    if(rs.next())    
    {
        String id=rs.getString("uid");
        String email=rs.getString("email_id");
      session.setAttribute("uname",uname);
      session.setAttribute("password", password);
      session.setAttribute("uid",id);
      session.setAttribute("uemail",email);
   
      ResultSet rs1=st.executeQuery("select * from orders where user_id='"+id+"' and status='Delivered'");
      if(rs1.next()){
          String status=rs1.getString("status");
        session.setAttribute("status",status);  
      
        
      response.sendRedirect("index.jsp"); 
      }
      else{
          String status="null";
           session.setAttribute("status",status);  
          response.sendRedirect("index.jsp"); 
      }
    }
    else{
  Statement st1=con.createStatement();


  ResultSet rss=st1.executeQuery("select * from users where admin_name='"+uname+"' and admin_pass='"+password+"'");
    if(rss.next()){
  

   String id=rss.getString("uid");
      session.setAttribute("uname",uname);
      session.setAttribute("password",password);
      session.setAttribute("uid",id);
      response.sendRedirect("admin_homepage.jsp"); 
      
    }else{
        response.sendRedirect("error1.jsp"); 
    }

    }
    

    
    }catch(Exception e){}
    
    
    } 
}