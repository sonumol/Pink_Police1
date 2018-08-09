<%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  if(session.getAttribute("lid")==null)
      response.sendRedirect("login.jsp");

  %>
<%@page import="newpackage.dbcon"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
 <% 
     
      dbcon db=new dbcon();
      Connection con=db.getcon();
      Statement st=con.createStatement();
     if(request.getParameter("button")!=null)
{
     String vehicle=request.getParameter("select");
     String number=request.getParameter("select2");
     String device_imei=request.getParameter("textfield");
     
     
      st.executeUpdate("insert into assign values(null,'"+vehicle+"','"+number+"','"+device_imei+"')");
      %>
      <script>
          alert("Successfully registered") 
       window.location="assign_vehicle.jsp"
      </script>>
      <%
}
    // if(request.getParameter("button2")!=null)
    // {
     //    response.sendRedirect("view_assign_vehicle.jsp");
    // }
    %>
    
   
<body>
<jsp:include page="header.jsp"/>
    <form id="form1" name="form1" method="post" action=>
  <table width="325" border="1">
    <tr>
      <td width="169">Vehicle</td>
      <td width="140"><label for="select"></label>
        <select name="select" id="select">
            <%
            ResultSet rs=st.executeQuery("select number from vehicle");
            while(rs.next())
            {
            %>
            <option><%=rs.getString(1)%></option>
            <% }%>
      </select></td>
    </tr>
    <tr>
      <td>Police</td>
      <td><label for="select2"></label>
        <select name="select2" id="select2">
            <%
            ResultSet rs1=st.executeQuery("select * from reg");
            while(rs1.next())
            {
            %>
            <option value="<%=rs1.getString(1)%>"><%=rs1.getString(2)+""+rs1.getString(3)%></option>
            <% }%>
      </select></td>
    </tr>
    <tr>
      <td>Device IMEI</td>
      <td><label for="textfield"></label>
      <input type="text" name="textfield" id="textfield" required /></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
        <input type="submit" name="button" id="button" value="Register" />
        <a href="view_assign_vehicle.jsp">View Assign Vehicle</a></div></td>
    </tr>
  </table>
  <p>&nbsp;</p>
      
</form>
<jsp:include page="footer.jsp"/>
</body>
</html>