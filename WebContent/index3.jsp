<!DOCTYPE html>
<html lang="en">

<head>
<title>Manager Page</title>
<meta charset="utf-8">

<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">
<meta name = "format-detection" content = "telephone=no" />
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<!--CSS-->
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/touchTouch.css">
 <!--JS-->   
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.mobilemenu.js"></script>
<script src="js/jquery.cookie.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script src="js/touchTouch.jquery.js"></script>
<script>
   $(window).load(function() {
     // Initialize the gallery
    $('.thumb-pad5 figure a').touchTouch();
  });
</script>
</head>
    <body style="background-image: url(figures/guid7.png);
	background-size: 100% 100%;
	background-repeat: no-repeat;
	background-attachment: fixed;"><br>
       <%@include file="header3.jsp"%>
<!--content-->
<div class="container padBot" style="height: 400px;background-image: url('figures/sleep.png');"><br><br>
    <div class="row">
        <article class="span4" style="color: white">
            <h5 style="color: purple;font-size: 35px">Actions</h5>
            <ol class="list1">
                <li><a style="font-size: 20px;color:#8080ff;" href="index3.jsp">Home</a></li>
                        <li><a  style="font-size: 20px;color:#8080ff;" href="ManagerIndex.jsp">View Products</a></li>
                <li><a  style="font-size: 20px;color:#8080ff;" href="edit1.jsp">Add Resources</a></li>
                <li><a style="font-size: 20px;color:#8080ff;" href="edit2.jsp">Delete Resources</a></li>
                <li><a style="font-size: 20px;color:#8080ff;" href="index.jsp">Logout</a></li>
            </ol>
        </article>
        <article class="span8 about-box" style="">
            <h5 style="color: Silver;margin-top: 180px;margin-left: -60px; font-size:50px;"><i>Welcome to Dream Manager Zone</i></h5>
                  
        </article>
    </div>
</div>
</body>

</html>