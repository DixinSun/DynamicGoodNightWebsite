package actions;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import actions.Connect;

public class LoginActions extends HttpServlet {
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */

            String username = request.getParameter("username");
            String pass = request.getParameter("pass");
            
            HttpSession se = request.getSession();
            Connection con = Connect.getCon();
            Statement st = con.createStatement();
            String sql = "select * from user where username='" + username + "'";
            ResultSet rs = st.executeQuery(sql);
            if (rs.next()) {

                if (pass.equals(rs.getString("pass")) && username.equals(rs.getString("username"))) {
                    se.setAttribute("UID",username);
                    String unames=rs.getString("username");
                    se.setAttribute("unames", unames);
                    response.sendRedirect("index2.jsp?Login_Success");
                } else {
                    response.sendRedirect("Login.jsp?Please_try_again");
                }
            }
            else{
                response.sendRedirect("Login.jsp?User_not_Exist");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processRequest(request, response);
	}

}
