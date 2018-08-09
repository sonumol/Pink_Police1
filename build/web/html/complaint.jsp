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
    <div style="overflow: scroll; width: 500;height: 100">
  <table width="529" border="1">
    <tr>
      <th width="176" scope="col">Complaint</th>
      <th width="132" scope="col">Name</th>
      <th width="112" scope="col">Date</th>
      <th width="112" scope="col">&nbsp;</th>
    </tr>
      <%
          dbcon db=new dbcon();
          Connection con=db.getcon();
          Statement st=con.createStatement();
          ResultSet rs=st.executeQuery("select complaint.complaint,user_reg.name,complaint.date,complaint.cmid from complaint inner join user_reg on complaint.uid=user_reg.uid where complaint.cmid not in (select cid from reply)");
          while(rs.next())
          {
         
      %>  
    <tr>
      <td><%= rs.getString(1) %></td>
      <td><%= rs.getString(2) %></td>
      <td><%= rs.getString(3) %></td>
      <td><font color="red"><a href="reply.jsp?cid=<%=rs.getString(4)%>">Reply</a></font></td>
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