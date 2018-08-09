
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="newpackage.dbcon"%>
<%@page import="newpackage.dbcon"%>
<%
     String id = request.getParameter("id");
    dbcon db=new dbcon();
      Connection con=db.getcon();
      Statement st=con.createStatement();
      st.executeUpdate("delete from vehicle where vid ='"+id+"'");
      response.sendRedirect("vehiclemanage.jsp");
    %>