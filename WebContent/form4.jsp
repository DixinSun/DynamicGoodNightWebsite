<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@page import="actions.Connect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
	function del(obj) {
		var trId = obj.parentNode.parentNode.id;
		var trObj = document.getElementById(trId);
		document.getElementById("tb").removeChild(trObj);
	}
</script>
<title>Insert title here</title>
</head>
<body
	style="background-image: url(figures/guid7.png); background-size: 100% 100%; background-repeat: no-repeat; background-attachment: fixed;">

	<div style="height: 300px; overflow: auto">


		<table style="width: 1000px;" id="tb">
			<tr
				style="border: solid 1px; font-size: 20px; color: burlywood; font-family: monospace; font-weight: bold;" id="1st">
				<td style="text-align: center;">Delete</td>
				<td style="text-align: center; height: 40px">ID</td>
				<td style="text-align: center; height: 40px">Name</td>
				<td style="text-align: center;">Description</td>
				<td style="text-align: center;">Album</td>
				<td style="text-align: center;">Price</td>
				<td style="text-align: center;">date</td>
				<td style="text-align: center;">URL</td>
			</tr>

			<%
				String id, audio_name, description, album, price, date, url = null;
			//                                                    String sql = "select * from bug where product='"+fs+"'";
			String sql = "SELECT * from songs";
			Connection con = Connect.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				id = rs.getString("id");
				audio_name = rs.getString("audio_name");
				description = rs.getString("description");
				album = rs.getString("album");
				price = rs.getString("price");
			
				date = rs.getString("date");
				date = rs.getString("url");
			%>
			<tr
				style="border: solid 1px; font-size: 15px; color: white; font-family: monospace; font-weight: bold;">
				<td><a href="<%=request.getContextPath()%>/UserDeleteServlet?id=${id}">Delete</a></td>
				<td style="height: 20px; text-align: center"><%=id%></td>
				<td style="height: 20px; text-align: center"><%=audio_name%></td>
				<td style="text-align: center;" width='-2%'><textarea readonly><%=description%></textarea></td>
				<td style="text-align: center;" width='12%'><%=album%></td>
				<td style="text-align: center;" width='12%'><%=price%></td>
				
				<td style="text-align: center;" width='12%'><%=date%></td>
				<td style="text-align: center;" width='12%'><%=url%></td>

			</tr>
			<%
				}
			%>
		</table>
		<input type="submit" value="Submit" class="btn btn-primary btn2"
			style="margin-left: 73px; width: 90px;" />

	</div>
	<br>
	<input type="button" name="Submit" value="Back"
		onclick="javascript:history.back(1)" />
</body>
</html>