<%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  if(session.getAttribute("lid")==null)
      response.sendRedirect("login.jsp");

  %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="newpackage.dbcon"%>
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
     String fname=request.getParameter("textfield");
     String lname=request.getParameter("textfield2");
     String gender=request.getParameter("radio");
     String place=request.getParameter("textfield3");
      String post=request.getParameter("textfield4"); 
      String pin=request.getParameter("textfield5"); 
      String contact=request.getParameter("textfield6"); 
      String email=request.getParameter("textfield7"); 
     
     
      st.executeUpdate("update reg set fname='"+fname+"',lname='"+lname+"',gender='"+gender+"',place='"+place+"',post='"+post+"',pin='"+pin+"',contact='"+contact+"',email='"+email+"' where pid='"+id+"'");
    %>
   
    <script>
       alert("Successfully updated") 
       window.location="managepink.jsp"
       
    </script>
    <% 
        
}
%>
<body>
<form id="form1" name="form1" method="post" action="">
     <% 
  
      
    ResultSet rs=st.executeQuery("Select * from reg where pid='"+id+"'");
    if(rs.next())
    {
%>
  <table width="380" border="1">
    <tr>
      <td width="166">First Name</td>
      <td width="198"><label for="textfield"></label>
      <input type="text" name="textfield" id="textfield" value="<%= rs.getString(2)%> " /></td>
    </tr>
    <tr>
      <td>Last Name</td>
      <td><label for="textfield2"></label>
      <input type="text" name="textfield2" id="textfield2" value="<%= rs.getString(3)%> "/></td>
    </tr>
    <tr>
      <td>Gender</td>
      <td><input type="radio" name="radio" id="radio" value="male" value="male"<%if(rs.getString(4).equals("male")) {%> checked<%}%> />
      <label for="radio">male
        <input type="radio" name="radio" id="radio2" value="female" value="male"<%if(rs.getString(4).equals("female")) {%> checked<%}%> />
      female</label></td>
    </tr>
    <tr>
      <td>Place</td>
      <td><label for="textfield3"></label>
      <input type="text" name="textfield3" id="textfield3"  value="<%= rs.getString(5)%>" /></td>
    </tr>
    <tr>
      <td>Post</td>
      <td><label for="textfield4"></label>
      <input type="text" name="textfield4" id="textfield4" value="<%= rs.getString(6)%>" /></td>
    </tr>
    <tr>
      <td>Pin</td>
      <td><label for="textfield5"></label>
      <input type="text" name="textfield5" id="textfield5" value="<%= rs.getString(7)%>" /></td>
    </tr>
    <tr>
      <td>Contact</td>
      <td><input type="text" name="textfield6" id="textfield6" value="<%= rs.getString(8)%>" /></td>
    </tr>
    <tr>
      <td>Email ID</td>
      <td><input type="text" name="textfield7" id="textfield7" value="<%= rs.getString(9)%>" /></td>
    </tr>
    <tr>
      <td colspan="2"><input type="submit" name="button" id="button" value="UPDATE" /></td>
    </tr>
  </table>
      <%
    }
    %>
</form>
</body>
</html>
