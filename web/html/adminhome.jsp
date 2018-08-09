<%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  if(session.getAttribute("lid")==null)
      response.sendRedirect("login.jsp");

  %>
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
    <table width="200" border="1">
      <tr>
        <th scope="row"><a href="reg.jsp">Pink Police Registration</a></th>
      </tr>
      <tr>
        <th scope="row"><a href="managepink.jsp">Manage Police</a></th>
      </tr>
      <tr>
        <th scope="row"><a href="vehiclemanage.jsp">Vehicle Management</a></th>
      </tr>
      <tr>
        <th scope="row"><a href="assign_vehicle.jsp">Assign  Vehicles</a></th>
      </tr>
      <tr>
        <th scope="row"><a href="track_vehicle.jsp">Track vehicle</a></th>
      </tr>
      <tr>
        <th scope="row"><a href="view_visuals.jsp">Visuals</a></th>
      </tr>
      <tr>
        <th scope="row"><a href="complaint.jsp">Compliants</a></th>
      </tr>
      <tr>
        <th scope="row"><a href="add_policeno.jsp">Pink Police Number Registration</a></th>
      </tr>
      <tr>
        <th scope="row"><a href="view_feedback.jsp">View Notification</a></th>
      </tr>
      <tr>
        <th scope="row"><a href="view_notification.jsp">View Feedback</a></th>
      </tr>
    </table>
  </div>
</form>
 <jsp:include page="footer.jsp"/>
</body>
</html>