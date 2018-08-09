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
    <form id="form1" name="form1" method="post" action="add_vehicle.jsp">
      <div align="center">
        <table width="413" border="1">
          <tr>
            <th width="152" scope="col">Vehicle Name</th>
            <th width="128" scope="col">Number</th>
            <th width="154" scope="col">Photo</th>
            <th width="154" scope="col">&nbsp;</th>
            <th width="154" scope="col">&nbsp;</th>
          </tr>
          <%
          dbcon db=new dbcon();
          Connection con=db.getcon();
          Statement st=con.createStatement();
          ResultSet rs=st.executeQuery("Select  * from vehicle");
          while(rs.next())
          {
              
          
                  
  
      %>  
          <tr>
            <td><%= rs.getString(2) %></td>
            <td><%= rs.getString(3) %></td>
            <td><img src="../uploads/<%= rs.getString(4) %>" width="100" height="100" ></img></td>
            <td><a href="update_vehicle.jsp?id=<%= rs.getString(1)%>">Edit</a></td>
            <td><a href="delete_vehicle.jsp?id=<%= rs.getString(1)%>">Delete</a></td>
          </tr>
          <%
          }
      %>
          <tr>
            <td height="28" colspan="5"><div align="center">
              <input type="submit" name="button" id="button" value="ADD" />
            </div></td>
          </tr>
          
        </table>
      </div>
</form>
<jsp:include page="footer.jsp"/>
</body>
</html>