/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package actions;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author java1
 */
public class resources extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            Date dNow = new Date();
  SimpleDateFormat ft = new SimpleDateFormat("E yyyy.MM.dd 'at' hh:mm:ss a zzz",Locale.ENGLISH);
  String reportDate = ft.format(dNow);
            String adate=reportDate;
            String Audio_Name = request.getParameter("Audio_Name");
            System.out.println("resources: " + Audio_Name);
            String desc = request.getParameter("desc");
            String resourceid = request.getParameter("resourceid");
            String price = request.getParameter("price");
            String album = request.getParameter("album");
            String ab = album;
            System.out.println("album: " + ab);
            Connection con = Connect.getCon();
            Statement st = con.createStatement();
           
            
            

//
//            if() {
//            int i = st.executeUpdate(insertQuery4);
//              if (i != 0) {
//            	  System.out.println("cool!");
//                  response.sendRedirect("index3.jsp?msg=Registration_success");
//              } else {
//                  response.sendRedirect("edit1.jsp?msg=Register Error");
//                  }
//            }
            
           if(ab.equals("ASMR")) {
                String insertQuery = "insert into asmr(resourceid, audio_name,description, price, date, album) values('" + resourceid + "','" + Audio_Name+ "','" + desc + "','"+price+"','"+adate+"','"+album+"')";

                int i = st.executeUpdate(insertQuery);
                if (i != 0) {
                    response.sendRedirect("index3.jsp?msg=Registration_success");
                } else {
                    response.sendRedirect("edit1.jsp?msg=Register Error");
                }
            }
            else if(ab.equals("Meditation")) {
                String insertQuery = "insert into meditation(resourceid, audio_name,description, price, date, album) values('" + resourceid + "','" + Audio_Name+ "','" + desc + "','"+price+"','"+adate+"','"+album+"')";

                int i = st.executeUpdate(insertQuery);
                if (i != 0) {
                    response.sendRedirect("index3.jsp?msg=Registration_success");
                } else {
                    response.sendRedirect("edit1.jsp?msg=Register Error");
                }
            }
            else if(ab.equals("Stories")) {
                String insertQuery = "insert into story(resourceid, audio_name,description,price, date, album) values('" + resourceid + "','" + Audio_Name+ "','" + desc + "','"+price+"','"+adate+"','"+album+"')";

                int i = st.executeUpdate(insertQuery);
                if (i != 0) {
                    response.sendRedirect("index3.jsp?msg=Registration_success");
                } else {
                    response.sendRedirect("edit1.jsp?msg=Register Error");
                }
            }
            else if(ab.equals("TalkShows")) {
                String insertQuery = "insert into talkshows(resourceid, audio_name,description, price, date, album) values('" + resourceid + "','" + Audio_Name+ "','" + desc + "','"+price+"','"+adate+"','"+album+"')";

                int i = st.executeUpdate(insertQuery);
                if (i != 0) {
                    response.sendRedirect("index3.jsp?msg=Registration_success");
                } else {
                    response.sendRedirect("edit1.jsp?msg=Register Error");
                }
            }
            else if(ab.equals("Songs")) {
            	
                String insertQuery = "insert into songs(resourceid, audio_name,description,price, date, album) values('" + resourceid + "','" + Audio_Name+ "','" + desc + "','"+price+"','"+adate+"','"+album+"')";

                int i = st.executeUpdate(insertQuery);
                if (i != 0) {
                    response.sendRedirect("index3.jsp?msg=Registration_success");
                } else {
                    response.sendRedirect("edit1.jsp?msg=Register Error");
                }
            }
            else if(ab.equals("Animates")) {
                String insertQuery = "insert into animates(resourceid, audio_name,description,price, date, album) values('" + resourceid + "','" + Audio_Name+ "','" + desc + "','"+price+"','"+adate+"','"+album+"')";

                int i = st.executeUpdate(insertQuery);
                if (i != 0) {
                    response.sendRedirect("index3.jsp?msg=Registration_success");
                } else {
                    response.sendRedirect("edit1.jsp?msg=Register Error");
                }
            }
            
          
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
