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
     <jsp:include page="header.jsp"/>
<form id="form1" name="form1" method="post" action="">
  <div align="center">
    <table width="429" height="109" border="1">
      <tr>
        <th width="58" height="32" scope="col">Name</th>
        <th width="58" scope="col">Gender</th>
        <th width="64" scope="col">Address</th>
        <th width="65" scope="col">Contact</th>
        <th width="80" scope="col">Email Id</th>
        <th width="31" scope="col">&nbsp;</th>
        <th width="42" scope="col">&nbsp;</th>
      </tr>
      <%
          dbcon db=new dbcon();
          Connection con=db.getcon();
          Statement st=con.createStatement();
          ResultSet rs=st.executeQuery("Select  * from reg");
          while(rs.next())
          {
              
          
                  
  
      %>  
      <tr>
        <td><%= rs.getString(2) +" "+ rs.getString(3) %></td>
        <td><%= rs.getString(4) %></td>
        <td><%= rs.getString(5) + " " + rs.getString(6) + " " + rs.getString(7) %></td>
        <td><%= rs.getString(8) %></td>
        <td><%= rs.getString(9) %></td>
        
        
        <td><p>&nbsp;</p>
          <p><a href="update_reg.jsp?id=<%= rs.getString(1)%>">edit</a></p>
        <p><a href="delete.jsp?id=<%= rs.getString(1)%>"></a></p></td>
        <td><a href="delete.jsp?id=<%= rs.getString(1)%>">delete</a></td>
      </tr>
      <%
          }
      %>
    </table>
  </div>
</form>
    <jsp:include page="footer.jsp"/>
</body>
</html>