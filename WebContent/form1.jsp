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
function delProduct(pid) {
    //alert();
    var isDel = confirm("Are you sure to delete it?？")
    if(isDel){
        location.href = "${pageContext.request.contextPath}/adminDelProduct?pid="+pid;
    }
}
</script>
<title>Meditation</title>
</head>
<body
	style="background-image: url(figures/guid7.png); background-size: 100% 100%; background-repeat: no-repeat; background-attachment: fixed;">

	<div style="height: 300px; overflow: auto">


		<table style="width: 1000px;" id="tb">
			<tr
				style="border: solid 1px; font-size: 20px; color: burlywood; font-family: monospace; font-weight: bold;" id="1st">
				
				<td style="text-align: center; height: 40px">ID</td>
				<td style="text-align: center; height: 40px">Name</td>
				<td style="text-align: center;">Description</td>
				<td style="text-align: center;">Album</td>
				<td style="text-align: center;">Price</td>
				<td style="text-align: center;">date</td>
				<td style="text-align: center;">URL</td>
				<td style="text-align: center;">Delete</td>
			</tr>
	  
			<%
			String id, audio_name, description, album, price, date, url = null;
			String Delete="";
			String sql = "SELECT * from meditation ";
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
				url = rs.getString("url");
				Delete = rs.getString("edit");
			%>
			<tr
				style="border: solid 1px; font-size: 15px; color: white; font-family: monospace; font-weight: bold;">
				<td style="height: 20px; text-align: center"><%=id%></td>
				<td style="height: 20px; text-align: center"><%=audio_name%></td>
				<td style="text-align: center;" width='-2%'><textarea readonly><%=description%></textarea></td>
				<td style="text-align: center;" width='12%'><%=album%></td>
				<td style="text-align: center;" width='12%'><%=price%></td>
				
				<td style="text-align: center;" width='12%'><%=date%></td>
				<td style="text-align: center;" width='12%'><%=url%></td>
                 <td style="text-align: center;"><a href="delete.jsp?<%=id%>"><input type='button' value='delete'></a></td>

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