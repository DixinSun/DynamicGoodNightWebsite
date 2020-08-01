package actions;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;


public class Connect extends HttpServlet {
	public static Connection getCon() throws ClassNotFoundException {
		 Connection con = null;
		 try {
			 Class.forName("com.mysql.cj.jdbc.Driver");
	            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/userlib?serverTimezone=UTC", "root", "qiuqiu521429");
	            System.out.println("Connection Established"+con);
	            
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return con;
		 }
}
