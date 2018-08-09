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
  <table width="354" border="1">
    <tr>
      <td>User Name</td>
      <td>Feedback</td>
      <td>Date</td>
    </tr>
      <%
          dbcon db=new dbcon();
          Connection con=db.getcon();
          Statement st=con.createStatement();
          ResultSet rs=st.executeQuery("select user_reg.name,feedback.feedback,feedback.date,feedback.fid from feedback inner join user_reg on feedback.uid=user_reg.uid");
          while(rs.next())
          {
         
      %>  
    <tr>
      <td><%= rs.getString(1) %></td>
      <td><%= rs.getString(2) %></td>
      <td><%= rs.getString(3) %></td>
      <td><a href="reply.jsp?cid=<%=rs.getString(4)%>">Reply</a></td>
    </tr>
      <%
          }
      %>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
    <jsp:include page="footer.jsp"/>
</body>
</html>