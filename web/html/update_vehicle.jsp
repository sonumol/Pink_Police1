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
<%  dbcon db=new dbcon();
      Connection con=db.getcon();
      Statement st=con.createStatement();
        String id=request.getParameter("id");
    
    if(request.getParameter("button")!=null)
{
     String name=request.getParameter("textfield");
     String number=request.getParameter("fileField");
     
     
     
      st.executeUpdate("update vehicle set name='"+name+"',number='"+number+"'where vid='"+id+"'");
}
    %>
   
<body>
<jsp:include page="header.jsp"/>
    <form  method="post"  name="form1" id="form1">
        <% 
  
      
    ResultSet rs=st.executeQuery("Select * from vehicle where vid='"+id+"'");
    if(rs.next())
    {
%>
      <div align="center">
        <table width="355" border="1">
          <tr>
            <td width="108">Vehice Name</td>
            <td width="144"><label for="textfield"></label>
            <input type="text" name="textfield" id="textfield"  value="<%= rs.getString(2)%> "/></td>
          </tr>
          <tr>
            <td>Number</td>
            <td><label for="textfield2"></label>
            <input type="text" name="textfield2" id="textfield2"value="<%= rs.getString(3)%> " /></td>
          </tr>
          <tr>
            <td>Photo</td>
            <td><label for="textfield3"></label>
              <label for="fileField"></label>
              <img name="" src="../uploads/<%= rs.getString(4) %>" width="32" height="32" alt="" /><a href="change_image.jsp?id=<%=rs.getString(1)%>">change_image </a></td>
          </tr>
            <%
          }
      %>
          <tr>
            <td colspan="2"><div align="center">
              <input type="submit" name="button" id="button" value="UPDATE" />
            </div></td>
          </tr>
        </table>
      </div>
</form>
<jsp:include page="footer.jsp"/>
</body>
</html>