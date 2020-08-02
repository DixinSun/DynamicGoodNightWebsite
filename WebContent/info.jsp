<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="refresh" content="5;url=index.jsp">
<title>welcome</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="font/font-awesome.css">

</head>
<body
	style="background-image: url(figures/guid7.png); background-size: 100% 100%; background-repeat: no-repeat; background-attachment: fixed; overflow: auto;"
	onload="run()">
	<%@include file="header.jsp"%>
	<div>

		<div>
			<h1 style="conlor: purple;">Ready to have a GoodNight?</h1>
			<br>
			<tr>
				<td align="center" styl="color:silver;">The journey will begin after<span
					id="spanId">5</span>seconds...
				</td>
			</tr>

		</div>
	</div>
</body>
<br>
<script type="text/javascript">
	var x = 5;
	function run() {
		var span = document.getElementById("spanId");
		span.innerHTML = x;
		x--;
		window.setTimeout("run()", 1000);
	}
</script>
</html>