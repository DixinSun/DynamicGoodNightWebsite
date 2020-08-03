<%@page import="actions.Connect"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>



<%

    try {

        String id = request.getQueryString();
        String sql = "DELETE FROM user WHERE dict_id ='" + id + "'";

        Connection con = Connect.getCon();
        Statement st = con.createStatement();
        int i = st.executeUpdate(sql);
        if (i != 0) {
            response.sendRedirect("loger.jsp?Approved");
        } else {
            response.sendRedirect("loger.jsp?Pls_Check");
        }
    } catch (Exception e){
        e.printStackTrace();;
    }


%>