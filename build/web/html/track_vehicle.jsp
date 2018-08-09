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
  <table width="374" border="1">
    <tr>
      <td width="117">Police</td>
      <td width="121">Contact</td>
      <td width="66">Number</td>
      
      <td width="107">&nbsp;</td>
    </tr>
       <%
          dbcon db=new dbcon();
          Connection con=db.getcon();
          Statement st=con.createStatement();
          ResultSet rs=st.executeQuery("select reg.fname,reg.lname,reg.contact,location.*,vehicle.number from reg inner join location on reg.pid=location.pid inner join assign  on  assign.pid=reg.pid  inner join vehicle on vehicle.number=assign.vid ");
          while(rs.next())
          {
            %>  
    <tr>
      <td><%=rs.getString(1)+" "+rs.getString(2)%></td>
      <td><%=rs.getString(3)%></td>
      <td><%=rs.getString(8)%></td>
      
      <td><a href="http://maps.google.com/maps?q=<%=rs.getString(5)+","+rs.getString(6)%>" target="_blank">track</a></td>
    </tr>
     <%
          }%>
  </table>
</form>
<jsp:include page="footer.jsp"/>
</body>
</html>