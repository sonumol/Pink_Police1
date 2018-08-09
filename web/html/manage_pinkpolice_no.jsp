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

<body>
<form id="form1" name="form1" method="post" action="">
  <table width="380" border="1">
    <tr>
      <th width="75" scope="col">place</th>
      <th width="123" scope="col">Phone number</th>
      <th width="72" scope="col">&nbsp;</th>
      <th width="82" scope="col">&nbsp;</th>
    </tr>
       <%
          dbcon db=new dbcon();
          Connection con=db.getcon();
          Statement st=con.createStatement();
          ResultSet rs=st.executeQuery("Select  * from pinknumber");
          while(rs.next())
          {
              
          
                  
  
      %>  
      <tr>
        <td><%= rs.getString(2)  %></td>
        <td><%= rs.getString(3) %></td>
        
        
        
        
        <td><p><a href="edit_policeno.jsp?id=<%= rs.getString(1)%>">edit</a></p></td>
        <td><a href="delete_phno.jsp?id=<%= rs.getString(1)%>">delete</a></td>
      </tr>
      <%
          }
      %>
  </table>
</form>
</body>
</html>