<%@ page import="java.sql.*;"%>
<jsp:useBean id="cn" scope="page" class="mm.Conn1" />
<%@page import="java.util.Properties;"%>
<%@page import="javax.mail.Session;"%>
<%@page import="javax.mail.Message;"%>
<%@page import="javax.mail.Transport;"%>
<%@page import="javax.mail.Transport;"%>
<%@page import="javax.mail.Authenticator;"%>
<%@page import="javax.mail.MessagingException;"%>
<%@page import="javax.mail.internet.InternetAddress;"%>
<%@page import="javax.mail.PasswordAuthentication;"%>
<%@page import="javax.mail.internet.MimeMessage;"%>
<%@page import="java.sql.*;" %>

<%  
    String email=request.getParameter("email");
    ResultSet rs=cn.executeQuery("select * from users where email_id='"+email+"'");
    if(rs.next()){
        String password=rs.getString("password");
        
     String to=email;
    String sub="Recover Forgot Password ";
    String msg="Your Password is "+password;
   final String user="jatinsharma282000@gmail.com";
   final String pass="clashofclans";
    
  Properties props = new Properties();
        props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");	
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        
        Session session1 = Session.getInstance(props,new Authenticator() 
        {
            
            protected PasswordAuthentication getPasswordAuthentication() 
            {
                return new PasswordAuthentication(user, pass);
            }
        });

        try 
        {
            Message message = new MimeMessage(session1);
            
            message.setFrom(new InternetAddress(user));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            message.setSubject(sub);
            message.setText(msg);
            
            Transport.send(message);
            
             response.sendRedirect("index.jsp");
            
        } catch (MessagingException e) 
        {
            out.print("user not informed");
            
            throw new RuntimeException(e);
        }  
   }
   %>