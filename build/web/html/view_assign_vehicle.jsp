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
  <div align="left">
    <table width="335" border="1">
      <tr>
        <th width="92" scope="col">Vehicle</th>
        <th width="77" scope="col">Police</th>
        <th width="93" scope="col">Device_IMEI</th>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <%
          dbcon db=new dbcon();
          Connection con=db.getcon();
          Statement st=con.createStatement();
          ResultSet rs=st.executeQuery("select assign.*,reg.fname,reg.lname from reg,assign where assign.pid=reg.pid");
          while(rs.next())
          {
              
          
                  
  
      %>  
      <tr>
        <td><%= rs.getString(2) %></td>
        <td><%=rs.getString(5)+" "+rs.getString(6)%> </td>
        <td><%= rs.getString(4) %></td>
        
        <%
          }
            %>
    </table>
  </div>
</form>
<jsp:include page="footer.jsp"/>
</body>
</html>