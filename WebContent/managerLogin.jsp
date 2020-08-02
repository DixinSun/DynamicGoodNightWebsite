<!DOCTYPE html>
<html lang="en">

<head>
<title>TPA Login</title>
<meta charset="utf-8">

<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">
<meta name="format-detection" content="telephone=no" />
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<!--CSS-->
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="font/font-awesome.css">
<!--JS-->
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.mobilemenu.js"></script>
<script src="js/jquery.cookie.js"></script>
<script src="js/forms.js"></script>
<script src="js/jquery.ui.totop.js"></script>

<script>
	function mnlog() {
		var name = document.tp.name.value;
		var pass = document.tp.pass.value;

		if (name == 0) {
			alert("enter tl name");
			document.tp.name.focus();
			return false;

		}
		if (pass == 0) {
			alert("enter tl password");
			document.tp.pass.focus();
			return false;

		}
	}
</script>
</head>
<body style="background-image:
	url(figures/guid7.png);
	background-size: 100% 100%;
	background-repeat:
	no-repeat;
	background-attachment:fixed;">
	<br>

	<%@include file="header.jsp"%>
	<!--content-->
	<div>
		<div>
			<article class="span8 form-box"
				style="margin-left: 750px; margin-top: -12px">
				<br>
				<h5 style="color: silver; margin-left: -10px">Manager Login</h5>
				<form name="manager" action="managerActivations" method="post"
					onsubmit="return nmlog()">
					<fieldset>
						<div class="form-div-1">
							<input type="text" placeholder="Name*:" name="name" value="">
							<br>
						</div>

						<div class="form-div-3">

							<input type="password" placeholder="password:" name="pass"
								value=""> <br>
						</div>
					</fieldset>
					<input type="submit" value="Submit" class="btn btn-primary btn2"
						style="margin-left: 10px; width: 95px; height: 35px;" />
				</form>
			</article>
		</div>

	</div>
	<div hidden class="met">
		Web Development: <a class="cop" href="http://www.metamorphozis.com">Free
			html5 Templates</a>
	</div>
</body>
</html>
