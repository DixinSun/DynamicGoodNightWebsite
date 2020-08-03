<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Good Night Web</title>
<meta charset="UTF-8">
<meta name="description" content="Your description">
<meta name="keywords" content="Your keywords">
<meta name="author" content="Your name">
<meta name="format-detection" content="telephone=no" />
<meta name="viewport" content="width=device-width,initial-scale=1.0">

<!--css-->
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
			alert("please enter domain name");
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
<body
	style="background-image: url(figures/guid7.png); background-size: 100% 100%; background-repeat: no-repeat; background-attachment: fixed;">
	<%@include file="header.jsp"%>
	<div>
		<marquee behavior="scroll" direction="left" hspace="0" vspace="0"
			loop="INFINITE" scrollamount="9" scrolldelay="300">
			<img src="figures/moons.png" width="130" height="100" alt="Natural" />
		</marquee>
		<div style="clean: both;"></div>
		<div>
			<div class="title"></div>
			<div class="title" style="background-image: url(figures/star.png);">
				<h1 title="Author:Dixin"
					style="text-align: center; font-size: 500%; color: skyblue;">
					<font>Good Night</font>
				</h1>
			</div>
			<div class="title"></div>
			<p style="color: silver">Tired? Lost your sleep?</p>

			<p style="color: silver">You came to the right place.</p>

			<p style="color: silver">I used to suffer from insomnia. After
				years of trying, I found many ways to fall asleep quickly.</p>

			<p style="color: silver">Here, every corner can help you fall
				asleep quickly.</p>

			</p>
			<p class="text2">Now, please find a quiet place,</p>

			<pstyle="color:silver;">choose a way you like best,
			</p>

			<p class="text3">close your eyes,</p>
			<p class="text">
				and <sup>Have</sup> a Good <sub>Night</sub> ..
			</p>
		</div>
		<div>
			<div class="div2left">
				<img src="figures/bud.png" />
			</div>
			<div class="div2right">
				<div class="div2goods">
					<a><img src="figures/ASMR.png" height="80px" width="80px" />
						<p style="color: silver; text-align: center">ASMR</p></a>
				</div>
				<div class="div2goods">
					<a><img src="figures/meditation .png" />
						<p style="color: silver; text-align: center">Meditation</p></a>
				</div>
				<div class="div2goods">
					<a><img src="figures/sleepingtaps.png" />
						<p style="color: silver; text-align: center">Stories</p></a>
				</div>
				<div class="div2goods">
					<a><img src="figures/guo.png" />
						<p style="color: silver; text-align: center">Chinese
							Traditional TalkShow</p></a>
				</div>
				<div class="div2goods">
					<a><img src="figures/wave.png" />
						<p style="color: silver; text-align: center">Songs</p></a>
				</div>
				<div class="div2goods">
					<a><img src="figures/movie.png" />
						<p style="color: silver; text-align: center">Animate</p></a>
				</div>
			</div>
		</div>
		<div style="clean: both;"></div>

		<div style="clean: both;"></div>
		<iframe SRC="DM.html" height="800px" width="1400px"></iframe>
		<marquee behavior="SCROLL" direction="RIGHT" bgcolor="skyblue"
			height="30" width="1500" hspace="0" vspace="0" loop="INFINITE"
			scrollamount="8" scrolldelay="500">Have a Good Night..</marquee>
	</div>
</body>
</html>