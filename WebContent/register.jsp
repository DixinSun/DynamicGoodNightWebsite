<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">
<meta name="format-detection" content="telephone=no" />
<meta name="viewport" content="width=device-width,initial-scale=1.0">

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

	function reg() {
		var name = document.devreg.name.value;
		var email = document.devreg.email.value;
		var pass = document.devreg.pass.value;
		var domain = document.devreg.domain.value;
		var date = document.devreg.date.value;
		var phone = document.devreg.phone.value;
		var location = document.devreg.location.value;

		if (name == 0) {
			alert("please enter name");
			document.devreg.name.focus();
			return false;
		}
		if (domain == 0) {
			alert("please choose a domain name");
			document.devreg.domain.focus();
			return false;
		}
		if (email == 0) {
			alert("please enter email");
			document.devreg.email.focus();
			return false;
		}

		if (pass == 0) {
			alert("please enter password");
			document.devreg.pass.focus();
			return false;
		}
		if (domain == 0) {
			alert("please select your situation");
			document.devreg.domain.focus();
			return false;
		}
		if (date == 0) {
			alert("please enter date");
			document.devreg.date.focus();
			return false;
		}

		if (phone == 0) {
			alert("please enter phone number");
			document.devreg.phone.focus();
			return false;
		}
		if (location == 0) {
			alert("please enter location");
			document.devreg.location.focus();
			return false;
		}

	}
</script>
</head>
<body style="background-image: url(figures/guid7.png);
	background-size: 100% 100%;
	background-repeat: no-repeat;
	background-attachment: fixed;">
	<%@include file="header.jsp"%>
	<div>
		<div class="row">

			<article class="span8 form-box" style="margin-left: 450px">
				<div>
					<br>
					<h1 style="margin-left: -100px; color: silver">Registration From</h1>
					<form name="regist" action="RegistActions" method="post"
						onsubmit="return reg()">
						<fieldset>
							<div class="form1">
								<input type="text" placeholder="UserName*:" name="username"
									pattern="[A-Za-z]+"
									title="please enter character in between A-Z or a-z"> <br>
							</div>
							<div class="form1">
								<input type="text" placeholder="Name*:" name="name"
									pattern="[A-Za-z]+"
									title="please enter character in between A-Z or a-z"> <br>
							</div>
							<div class="form2">
								<input type="email" placeholder="Email*:" name="email"
									pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$"
									title="Ex:- abc@gamil.com"> <br>
							</div>
							<div class="form3">
								<input type="password" placeholder="password:" name="pass">
								<br>
							</div>
							<div class="form3">
								<select name="sleep_quality" style="margin-top: 0px;">
									<option value="">sleep quality</option>
									<option value="Low">Low</option>
									<option value="Medium">Medium</option>
									<option value="Good">Good</option>
								</select><br>
							</div>
							<div class="form3" style="">
								<input type="date" name="date" placeholder="Date of Joining">
							</div>
							<br>
							<div class="form3">
								<input type="tel" placeholder="Phone:" name="phone"
									pattern="[5-9]{1}[0-9]{9}$"
									title="Phone number with 6-9 and remaing 9 digit with 0-9">
								<br>

							</div>
							<div class="form3">
								<input type="text" placeholder="Location" name="location"
									pattern="[A-Za-z]+"
									title="please enter character in between A-Z or a-z"> <br>
							</div>
						</fieldset>
						<input type="submit" value="Register" class="btn btn-primary btn2"
							style="margin-left: 73px; width: 90px;" />
					</form>
				</div>
			</article>
		</div>
	</div>
	<div hidden class="met">
		Web Development: <a class="cop" href="http://www.metamorphozis.com">Free
			html5 Templates</a>
	</div>
	</div>
</body>
</html>