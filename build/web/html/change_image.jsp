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
    <%
        String  id=request.getParameter("id");
        session.setAttribute("id", id);
    %>
    <form id="form1" name="form1" method="post" action="change_pic.jsp" enctype="multipart/form-data">
  <table width="200" border="1">
    <tr>
      <td>Photo</td>
      <td><label for="textfield3"></label>
        <label for="fileField"></label>
        <input type="file" name="fileField" id="fileField" /></td>
    </tr>
      
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="button" id="button" value="change" /></td>
    </tr>
  </table>
</form>
<jsp:include page="footer.jsp"/>
</body>
</html>