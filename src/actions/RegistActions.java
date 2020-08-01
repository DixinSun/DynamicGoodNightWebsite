package actions;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import actions.Connect;


public class RegistActions extends HttpServlet {
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String name = request.getParameter("name");
            String username = request.getParameter("username");
            System.out.println("name:" + username);
            String pass = request.getParameter("pass");
            String Day = request.getParameter("date");
            System.out.println("date" + Day);
            String mail = request.getParameter("email");
            String mobile = request.getParameter("phone");
            String place = request.getParameter("location");
            String sleep_quality = request.getParameter("sleep_quality");
            Connection con = Connect.getCon();
            Statement st = con.createStatement();
            String insertQuery = "insert into user(name, username,  pass, Day, mail, sleep_quality, mobile, place) values('" + name + "','"+username+"','" + pass + "','" + Day + "','" + mail + "','" + sleep_quality + "','" + mobile + "','" + place + "')";

            int i = st.executeUpdate(insertQuery);

            if (i != 0) {
                response.sendRedirect("info.jsp?msg=Registration_success");
            } else {
                response.sendRedirect("register.jsp?msg=Register Error");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		processRequest(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		processRequest(request, response);
	}

}
