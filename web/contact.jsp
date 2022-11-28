
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
				<a href="index.jsp"> <span class="icon-home"></span> Home</a> 
				 <a href="register.jsp"><span class="icon-edit"></span> Free Register </a> 
				<a href="contact.jsp"><span class="icon-envelope"></span> Contact us</a>
				
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
		  <div class="nav-collapse">
			<ul class="nav">
			  <li class="active"><a href="index.jsp">Home	</a></li>
						</ul>
			
			<ul class="nav pull-right">
			<li class="dropdown">
				<a data-toggle="dropdown" class="dropdown-toggle" href="#"><span class="icon-lock"></span> Login <b class="caret"></b></a>
				<div class="dropdown-menu">
				<form class="form-horizontal loginFrm">
				  <div class="control-group">
					<input type="text" class="span2" id="inputEmail" placeholder="Email">
				  </div>
				  <div class="control-group">
					<input type="password" class="span2" id="inputPassword" placeholder="Password">
				  </div>
				  <div class="control-group">
					<label class="checkbox">
					<input type="checkbox"> Remember me
					</label>
					<button type="submit" class="shopBtn btn-block">Sign in</button>
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
		
		<div class="span4">
		<h4>Email Us</h4>
		<form name="f1" action="contact1.jsp" method="post">
<center><table cellspacing="20"><tr><th colspan="2"><b>Contact Us </b></th></tr>
        <tr><td>FROM  (enter your e-mail id)</td><td><input type="email" name="from"></td><td></td></tr>
    <tr><td>Enter Password </td><td><input type="password" name="password"></td></tr>
    <tr><td>TO</td><td><input type="email" name="to" value="shubhamkashab@gmail.com" readonly="readonly"></td></tr>
    <tr><td>Subject</td><td><input type="text" name="subject"></td></tr>
    <tr><td>Message</td><td><input type="text" name="message" ></td></tr>
    <tr><td colspan="2"><center><input type="button" onclick="check()" value="Submit"></center></td></tr>
    </table></center></form>
		</div>
	</div>

	
</div>

  </body>
</html>
