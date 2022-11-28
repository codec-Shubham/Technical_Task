<%@ page import="java.util.Properties;"%>
<%@ page import="javax.mail.Session;"%>
<%@ page import="javax.mail.Message;"%>
<%@ page import="javax.mail.Transport;"%>
<%@ page import="javax.mail.Transport;"%>
<%@ page import="javax.mail.Authenticator;"%>
<%@ page import="javax.mail.MessagingException;"%>
<%@ page import="javax.mail.internet.InternetAddress;"%>
<%@ page import="javax.mail.PasswordAuthentication;"%>
<%@ page import="javax.mail.internet.MimeMessage;"%>
<%@ page import="javax.swing.JOptionPane;"%>

<%
    String to=request.getParameter("to");
    String sub=request.getParameter("subject");
    String msg=request.getParameter("message");
    final String user=request.getParameter("from");
    final String pass=request.getParameter("password");
    
  Properties props = new Properties();
props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");	
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        
        Session session1 = Session.getDefaultInstance(props,new Authenticator() 
        {
            @Override
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
             response.sendRedirect("index.jsp");
            
            throw new RuntimeException(e);
        }  
%>