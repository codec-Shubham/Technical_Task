<%
  String uname=(String)session.getAttribute("uname");
  String pass=(String)session.getAttribute("password");
  out.print(uname+"<br>");
   out.print(pass+"<br>");
if((uname.equals("") || uname.equals(null)) && (pass.equals("") || pass.equals(null))){
    response.sendRedirect("homepage.jsp");
}
else{
%>
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

<script>
function check()
{
    
   
    if(f1.from.value=="" || f1.from.value==null){
        alert("Enter a Valid E-mail id");
    }
    n=f1.from.value;//abc
    s=n.indexOf("@");
    if(s==-1)
    {
        alert("must  include @");
        return;
    } 
    s=n.indexOf(".com");
    if(s==-1)
    {
        alert("enter  email  properly");
        return;
    }
    
   if(f1.password.value=="" || f1.password.value==null){
        alert("Enter Password");
    }
    if(f1.subject.value=="" || f1.subject.value==null){
        alert("Enter Subject");
    }
    if(f1.message.value=="" || f1.message.value==null){
        alert("Enter message");
    }
    /*if(f1.image.value="" || f1.image.value=null){
        alert("Please Select an Image");
    }*/
    f1.submit();

}

</script>

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
				<a data-toggle="dropdown" class="dropdown-toggle" href="#"><span class="icon-lock"></span>Welcome,<%out.print(uname);%> <b class="caret"></b></a>
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
<!-- 
Body Section 
-->
	
		
		<div>
                    <center><h4>Change Password</h4></center>
		
<script>
function show()
{
    if(f1.cpass.value=="" || f1.cpass.value==null)
    {
        alert("Enter Current Password");
        return;
    }
    if(f1.npass.value!=f1.npass1.value){
        alert("New Passsword do not match");
        return;
    }
    if(f1.npass.value=="" || f1.npass.value==null){
        alert("Please enter New Password");
        return;
    }
    if(f1.npass1.value=="" || f1.npass1.value==null){
        alert("Please enter New Password");
        return;
    }
    f1.submit();

}
</script>
<form name="f1" action="change_password1.jsp" method="post">
    <center><table cellspacing="20"> <tr><td colspan="2"></td></tr>
    <tr><td>Enter Current Password</td><td><input type="password" name="cpass"></td></tr>
    <tr><td>Enter New Password</td><td><input type="password" name="npass"></td></tr>
    <tr><td>Re-enter New Password</td><td><input type="password" name="npass1"></td></tr>
    <tr><td colspan="2"><center><input type="button" value="Submit" onclick="show()"></center></td></tr>
</table></center>
</form>
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