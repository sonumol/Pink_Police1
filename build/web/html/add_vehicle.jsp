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
    <form action="vehcle_upload.jsp" method="post" enctype="multipart/form-data" name="form1" id="form1">
      <div align="center">
        <table width="355" border="1">
          <tr>
            <td width="108">Vehice Name</td>
            <td width="144"><label for="textfield"></label>
            <input type="text" name="textfield" id="textfield" required pattern="[A-Z a-z]{3,25}" class="form-control" /></td>
          </tr>
          <tr>
            <td>Number</td>
            <td><label for="textfield2"></label>
            <input type="text" name="textfield2" id="textfield2" required /></td>
          </tr>
          <tr>
            <td>Photo</td>
            <td><label for="textfield3"></label>
              <label for="fileField"></label>
            <input type="file" name="fileField" id="fileField" required /></td>
          </tr>
          <tr>
            <td colspan="2"><div align="center">
              <input type="submit" name="button" id="button" value="Register" />
            </div></td>
          </tr>
        </table>
      </div>
</form>
</body>
</html>