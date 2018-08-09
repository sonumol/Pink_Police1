/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package json_pack;

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
import newpackage.dbcon;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

/**
 *
 * @author Admin
 */
@WebServlet(name = "verify_spot", urlPatterns = {"/verify_spot"})
public class verify_spot extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet verify_spot</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet verify_spot at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
       // processRequest(request, response);
         JSONObject json = new JSONObject();
        try
        {
             dbcon db=new dbcon();
            Connection con=db.getcon();
            Statement st=con.createStatement();
          //  String place=request.getParameter("place");
             JSONArray ar=new JSONArray();
  
             ResultSet rs=st.executeQuery("select user_reg.name,dangerous_spot.place,dangerous_spot.reason from user_reg inner join dangerous_spot on user_reg.uid=dangerous_spot.dsid");
            while(rs.next())
            {
               JSONObject jo=new JSONObject();
               jo.put("user",rs.getString(1));
                jo.put("spot",rs.getString(2));
                jo.put("reason",rs.getString(3));
               
                   ar.add(jo);
 
            }
            json.put("product", ar);
              response.getWriter().write(json.toString());

         
       
        }
        catch(Exception ex )
        {
            
        }
         response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(json.toString());

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
