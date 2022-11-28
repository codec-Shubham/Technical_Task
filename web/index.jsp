<%@page import="java.sql.*;" %>
<jsp:useBean id="cn" scope="page" class="mm.Conn1" />
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Online Electronics Shopping</title>
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
            String username = (String) session.getAttribute("uname");
            String password = (String) session.getAttribute("password");
            String uid = (String) session.getAttribute("uid");
            int items = 0;
            int total_amt = 0;

            if ((username != "" && username != null) && (password != "" && password != null)) {

                ResultSet rs = cn.executeQuery("select * from cart where user_id='" + uid + "'");
                while (rs.next()) {
                    items++;
                    int amt = Integer.parseInt(rs.getString("price"));
                    total_amt = total_amt + amt;
                }

        %>
-->

        <!-- 
                Upper Header Section 
        -->
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="topNav">
                <div class="container">
                    <div class="alignR">
                        
                        <a class="active" href="index.jsp"> <span class="icon-home"></span> Home</a> 
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
                                    <a data-toggle="dropdown" class="dropdown-toggle" href="#"><span class="icon-lock"></span>Welcome,<%out.print(username);%> <b class="caret"></b></a>
                                    <div class="dropdown-menu"><script>
                                        function  valid1()
                                        {
                                            if (f.username.value === "")
                                            {
                                                alert("enter username");
                                                return;
                                            }
                                            if (f.password.value == "")
                                            {
                                                alert("enter password");
                                                return;

                                            }
                                            f.submit();
                                        }
                                        </script>
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
            <div class="row">
                <div class="span9">
                    <div class="well np">
                        <div id="myCarousel" class="carousel slide homCar">
                            <div class="carousel-inner">
                                <div class="item">
                                    <img style="width:500%" src="assets/img/l1.jpg" alt="Redmi Note 4">
                                    <center><div class="carousel-caption">
                                            <h4>Redmi Note 4</h4>
                                            <p><span>Next Sale on 31/03/2017</span></p>
                                        </div></center>
                                </div>
                                <div class="item">
                                    <img style="width:100%" src="assets/img/l2.jpg" alt="Samsung s6 Edge">
                                    <div class="carousel-caption">
                                        <h4></h4>
                                        <p><span>Samsung S6 Edge</span></p>
                                    </div>
                                </div>
                                <div class="item active">
                                    <img style="width:100%" src="assets/img/a6.jpg" alt="bootstrap ecommerce templates">
                                    <div class="carousel-caption">
                                        <h4></h4>
                                        <p><span></span></p>
                                    </div>
                                </div>
                                <div class="item">
                                    <img style="width:100%" src="assets/img/tv4.jpg" alt="bootstrap templates">
                                    <div class="carousel-caption">
                                        <h4></h4>
                                        <p><span></span></p>
                                    </div>
                                </div>
                            </div>
                            <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                            <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
                        </div>
                    </div>
                </div><!-- /container -->

                
                <a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
                <!-- Placed at the end of the document so the pages load faster -->
                <script src="assets/js/jquery.js"></script>
                <script src="assets/js/bootstrap.min.js"></script>
                <script src="assets/js/jquery.easing-1.3.min.js"></script>
                <script src="assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>
                <script src="assets/js/shop.js"></script>
                </body>
                </html>


                <%} else {%>
                <!DOCTYPE html>
                <html lang="en">
                    <head>
                        <meta charset="utf-8">
                        <title>Online Electronics Shopping</title>
                        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                        <meta name="description" content="">
                        <meta name="author" content="">
                        <!-- Bootstrap styles -->
                        <link href="assets/css/bootstrap.css" rel="stylesheet"/>
                        <!-- Customize styles -->
                        <link href="style.css" rel="stylesheet"/>
                        <!-- font awesome styles -->
                        <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">

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
                                        <a class="active" href="index.jsp"> <span class="icon-home"></span> Home</a> 
                                        <a href="register.jsp"><span class="icon-edit"></span> Free Register </a> 
                                        <a href="contact.jsp"><span class="icon-envelope"></span> Contact us</a>
                                                                       </div>
                                </div>
                            </div>
                        </div>

                        <div class="container">
                            <div id="gototop"> </div>
                            <header id="header">
                                <div class="row">
                                    <div class="span4">
                                        <h1>
                                            <a class="logo" href="#"><span>Twitter Bootstrap ecommerce template</span> 
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
                                                    <div class="dropdown-menu"><script>
                                        function  valid1()
                                        {
                                            if (f.username.value === "")
                                            {
                                                alert("enter username");
                                                return;
                                            }
                                            if (f.password.value == "")
                                            {
                                                alert("enter password");
                                                return;

                                            }
                                            f.submit();
                                        }
                                                        </script>
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
                            
                            <!--body -->
                            <br><br><br><br><br><br><br>
                            <center>
                                <div><b>You need to register first,if you are new user otherwise continue by login </b></div>
                            </center>
                            
                           
                        <!-- Placed at the end of the document so the pages load faster -->
                        <script src="assets/js/jquery.js"></script>
                        <script src="assets/js/bootstrap.min.js"></script>
                        <script src="assets/js/jquery.easing-1.3.min.js"></script>
                        <script src="assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>
                        <script src="assets/js/shop.js"></script>
                    </body>
                </html>
                <%}%>