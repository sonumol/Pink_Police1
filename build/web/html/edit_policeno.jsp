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
<%  dbcon db=new dbcon();
      Connection con=db.getcon();
      Statement st=con.createStatement();
        String id=request.getParameter("id");
    
    if(request.getParameter("button")!=null)
{
     String place=request.getParameter("textfield");
     String phone_no=request.getParameter("textfield2");
    
     
      st.executeUpdate("update pinknumber set place='"+place+"',phno='"+phone_no+"' where pnid='"+id+"'");
    %>
   
    <script>
       alert("Successfully updated") 
       window.location="manage_pinkpolice_no.jsp"
       
    </script>
    <% 
        
}
%>
<body>
<form id="form1" name="form1" method="post" action="">
     <% 
  
      
    ResultSet rs=st.executeQuery("Select * from pinknumber where pnid='"+id+"'");
    if(rs.next())
    {
%>
  <table width="200" border="1">
    <tr>
      <td>Place</td>
      <td><label for="textfield"></label>
      <input type="text" name="textfield" id="textfield"  value="<%= rs.getString(2)%>" /></td>
    </tr>
    <tr>
      <td>Phno</td>
      <td><label for="textfield2"></label>
      <input type="text" name="textfield2" id="textfield2" value="<%= rs.getString(3)%>" /></td>
    </tr>
    <tr>
      <td colspan="2"><input type="submit" name="button" id="button" value="Update" /></td>
    </tr>
  </table>
     <%
    }
    %>
</form>
</body>
</html>