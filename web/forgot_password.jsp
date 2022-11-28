<%@page import="java.sql.*;" %>
<jsp:useBean id="cn" scope="page" class="mm.Conn1" />

<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Twitter Bootstrap shopping cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap styles -->
    <link href="assets/css/bootstrap.css" rel="stylesheet"/>
    <!-- Customize styles -->
    <link href="style.css" rel="stylesheet"/>
    <!-- font awesome styles -->
	<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
		<!--[if IE 7]>
			<link href="css/font-awesome-ie7.min.css" rel="stylesheet">
		<![endif]-->

		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

	<!-- Favicons -->
    <link rel="shortcut icon" href="assets/ico/favicon.ico">
  </head>
<body>
     <%
        String username=(String)session.getAttribute("uname");
        String password=(String)session.getAttribute("password");
        String uid=(String)session.getAttribute("uid");
        int items=0;
        int total_amt=0;
        
        if((username!="" && username!=null) && (password!="" && password!=null)){
            
ResultSet rs=cn.executeQuery("select * from cart where user_id='"+uid+"'");
        while(rs.next()){
            items++;
            int amt=Integer.parseInt(rs.getString("price"));
            total_amt=total_amt+amt;
        }
        
        %>
    
    
    
<!-- 
	Upper Header Section 
-->
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="topNav">
		<div class="container">
			<div class="alignR">
				<div class="pull-left socialNw">
					<a href="#"><span class="icon-twitter"></span></a>
					<a href="#"><span class="icon-facebook"></span></a>
					<a href="#"><span class="icon-youtube"></span></a>
					<a href="#"><span class="icon-tumblr"></span></a>
				</div>
				<a href="index.jsp"> <span class="icon-home"></span> Home</a> 
				<a href="register.jsp"><span class="icon-edit"></span> Free Register </a> 
				<a href="contact.jsp?type=all"><span class="icon-envelope"></span> Contact us</a>
			</div>
		</div>
	</div>
</div>


<!--
Navigation Bar Section 
-->
<div class="navbar">
	  <div class="navbar-inner">
		<div class="container">
		  <a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		  </a>
		  <div class="nav-collapse">
			<ul class="nav">
			  <li class="active"><a href="index.jsp">Home	</a></li>
			  </ul>
			
			<ul class="nav pull-right">
			<li class="dropdown">
				<a data-toggle="dropdown" class="dropdown-toggle" href="#"><span class="icon-lock"></span> Login <b class="caret"></b></a>
				<div class="dropdown-menu">
				<form class="form-horizontal loginFrm" action="logout.jsp">
				  <div class="control-group">
					<input type="submit"  class="span2" value="Logout" >
				  </div>
				  
				</form>				
                                </div>
			</li>
			</ul>
		  </div>
		</div>
	  </div>
	</div>
		
<div class="span9">
    <ul class="breadcrumb">
		<li><a href="index.jsp">Home</a> <span class="divider">/</span></li>
		<li class="active">FORGOT YOUR PASSWORD</li>
    </ul>
	<div class="well well-small">
	<h3> FORGOT YOUR PASSWORD</h3>	
	<hr class="soft"/>
	
	Please enter the e-mail address used to register. We will e-mail you your new password.<br/><br/><br/>
	
	<script>
    function check(){
        if(f1.email.value==="" || f1.email.value===null){
        alert("Enter a Valid E-mail id");
    }
    n=f1.email.value;//abc
    s=n.indexOf("@");
    if(s===-1)
    {
        alert("must  include @");
        return;
    } 
    s=n.indexOf(".com");
    if(s===-1)
    {
        alert("enter  email  properly");
        return;
    }
     f1.submit();
    }
   </script>
	<form class="form-inline" name="f1" action="forgot_password1.jsp">
		<label class="control-label" for="inputEmail">E-mail address</label>
		<input type="text" class="span4" placeholder="Email" name="email">			  
		<button type="submit" class="shopBtn block" onclick="check()">Send My Password</button>
	</form>
</div>
</div>
</div>

<a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.easing-1.3.min.js"></script>
    <script src="assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>
    <script src="assets/js/shop.js"></script>
  </body>
</html>
<%}else{%>
 <!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Twitter Bootstrap shopping cart</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap styles -->
    <link href="assets/css/bootstrap.css" rel="stylesheet"/>
    <!-- Customize styles -->
    <link href="style.css" rel="stylesheet"/>
    <!-- font awesome styles -->
	<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
		<!--[if IE 7]>
			<link href="css/font-awesome-ie7.min.css" rel="stylesheet">
		<![endif]-->

		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

	<!-- Favicons -->
    <link rel="shortcut icon" href="assets/ico/favicon.ico">
  </head>
<body>
<!-- 
	Upper Header Section 
-->
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="topNav">
		<div class="container">
			<div class="alignR">
				<div class="pull-left socialNw">
					<a href="#"><span class="icon-twitter"></span></a>
					<a href="#"><span class="icon-facebook"></span></a>
					<a href="#"><span class="icon-youtube"></span></a>
					<a href="#"><span class="icon-tumblr"></span></a>
				</div>
				<a href="index.jsp"> <span class="icon-home"></span> Home</a> 
				<a href="register.jsp"><span class="icon-edit"></span> Free Register </a> 
				<a href="contact.jsp"><span class="icon-envelope"></span> Contact us</a>
				<a href="cart.jsp"><span class="icon-shopping-cart"></span>Login First</span></a>
			</div>
		</div>
	</div>
</div>

<!--
Lower Header Section 
-->
<div class="container">
<div id="gototop"> </div>
<header id="header">
<div class="row">
	<div class="span4">
	<h1>
	<a class="logo" href="index.jsp"><span>Twitter Bootstrap ecommerce template</span> 
		<img src="assets/img/logo-bootstrap-shoping-cart.png" alt="bootstrap sexy shop">
	</a>
	</h1>
	</div>
	<div class="span4">
	
	</div>
</div>
</header>

<!--
Navigation Bar Section 
-->
<div class="navbar">
	  <div class="navbar-inner">
		<div class="container">
		  <a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		  </a>
		  <div class="nav-collapse">
			<ul class="nav">
			  <li class="active"><a href="index.jsp">Home	</a></li>
			  </ul>
			
			<ul class="nav pull-right">
			<li class="dropdown">
				<a data-toggle="dropdown" class="dropdown-toggle" href="#"><span class="icon-lock"></span> Login <b class="caret"></b></a>
				<div class="dropdown-menu">
				<form class="form-horizontal loginFrm" method="post" action="login"  name=f>
				  <div class="control-group">
					<input type="text" class="span2" id="inputEmail" name="username" placeholder="username">
				  </div>
				  <div class="control-group">
					<input type="password" name="password" class="span2" id="inputPassword" placeholder="Password">
				  </div>
				  <div class="control-group">
					<label class="checkbox">
					<input type="checkbox"> Remember me
					</label>
					<button type="button" class="shopBtn btn-block" onclick="valid1()">Login in</button>
                                        <a href='forgot_password.jsp'>Forget Password?</a>
				  </div>
				</form>
				</div>
			</li>
			</ul>
		  </div>
		</div>
	  </div>
	</div>
<!-- 
Body Section 
-->
	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="index.jsp">Home</a> <span class="divider">/</span></li>
		<li class="active">FORGOT YOUR PASSWORD</li>
    </ul>
	<div class="well well-small">
	<h3> FORGOT YOUR PASSWORD</h3>	
	<hr class="soft"/>
	
	Please enter the e-mail address used to register. We will e-mail you your new password.<br/><br/><br/>
	
	<script>
    function check(){
        if(f1.email.value==="" || f1.email.value===null){
        alert("Enter a Valid E-mail id");
    }
    n=f1.email.value;//abc
    s=n.indexOf("@");
    if(s===-1)
    {
        alert("must  include @");
        return;
    } 
    s=n.indexOf(".com");
    if(s===-1)
    {
        alert("enter  email  properly");
        return;
    }
     f1.submit();
    }
   </script>
	<form class="form-inline" name="f1" action="forgot_password1.jsp">
		<label class="control-label" for="inputEmail">E-mail address</label>
		<input type="text" class="span4" placeholder="Email" name="email">			  
		<button type="submit" class="shopBtn block" onclick="check()">Send My Password</button>
	</form>
</div>
</div>
</div>
<a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.easing-1.3.min.js"></script>
    <script src="assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>
    <script src="assets/js/shop.js"></script>
  </body>
</html>
<%}%>