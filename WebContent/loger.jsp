<%@page import="actions.Connect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Users </title>
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

</head>
<body style="background-image: url(figures/guid7.png); background-size: 100% 100%; background-repeat: no-repeat; background-attachment: fixed;">
<%@include file="header4.jsp"%>
<!--content-->
<div class="container padBot" style="height: 600px;background-image: url('figures/pmain.png');background-size: 100% 100%;
	background-repeat: no-repeat;
	background-attachment: fixed;"><br>

         <article class="span8 about-box" style="margin-top: -10px">
            <h5 style="margin-left: 450px; font-size:250%;">Customers</h5>
                        <table style="margin-left: 200px;width: 800px">
                            <tr style="border: solid 1px;font-size: 20px;color:burlywood;font-family: monospace;font-weight: bold;">
                                <td style="text-align: center;height: 40px">Id</td>
                                <td style="text-align: center;">UserName</td>
                                <td style="text-align: center;">Name</td>
                                <td style="text-align: center;">Email</td>
                                <td style="text-align: center;">SleepQuality</td>
                                <td style="text-align: center;">Contact</td>
                                <td style="text-align: center;">Location</td>
                                <td style="text-align: center;">DateOfJoining</td>
                                 <td style="text-align: center;">Status</td>
                                 <td style="text-align: center;">Delete</td>
         
                            </tr>
                            <%
                                String id, UserName, Name,Email, SleepQuality,Contact, Location, DateOfJoining= null;
                                String Status ="ClickToActivate";
                                String Delete ="";
                                String sql = "select * from user";
                                Connection con = Connect.getCon();
                                Statement st = con.createStatement();
                                ResultSet rs = st.executeQuery(sql);
                                while (rs.next()) {
                                    id = rs.getString("dict_id");
                                    Name = rs.getString("name");
                                    UserName = rs.getString("username");
                                    Email = rs.getString("mail");
                                    SleepQuality = rs.getString("sleep_quality");
                                    Contact = rs.getString("mobile");
                                    Location = rs.getString("place");
                                    DateOfJoining = rs.getString("Day");
                                    Status = rs.getString("status");
                                    Delete = rs.getString("edit");
                            %>
                            <tr style="border: solid 1px;font-size: 15px;color: white;font-family: monospace;font-weight: bold;">
                                <td style="height: 20px;text-align: center"><%=id%></td>
                                <td style="text-align: center" width='10%'><%=UserName%></td>
                                <td style="text-align: center" width='10%'><%=Name%></td>
                                 <td style="text-align: center;" width='12%'><%=Email%></td>
                                <td style="text-align: center;" width='-2%'><%=SleepQuality%></td>
                                <td style="text-align: center;" width='12%'><%=Contact%></td>
                                <td style="text-align: center;" width='12%'><%=Location%></td>
                                <td style="text-align: center;" width='12%'><%=DateOfJoining%></td>
                                <td style="text-align: center;"><a style="color: white" href="activate.jsp?<%=id%>"><%=Status%></a></td>
                                <td style="text-align: center;"><a href="delete.jsp?<%=id%>"><input type='button' value='delete'></a></td>
                                
                            </tr>
                            <%
                                }
                            %>
                        </table>
        </article>
    </div>
</div>
<div hidden class="met">Web Development: <a class="cop" href="http://www.metamorphozis.com">Free html 5 Templates</a></div>
</body>

</html>