<%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  if(session.getAttribute("lid")==null)
      response.sendRedirect("login.jsp");

  %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="newpackage.dbcon"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<% if(request.getParameter("button")!=null)
{
     String fname=request.getParameter("textfield");
     String lname=request.getParameter("textfield2");
     String gender=request.getParameter("radio");
     String place=request.getParameter("textfield3");
      String post=request.getParameter("textfield4"); 
      String pin=request.getParameter("textfield5"); 
      String contact=request.getParameter("textfield6"); 
      String email=request.getParameter("textfield7"); 
     
      dbcon db=new dbcon();
      Connection con=db.getcon();
      Statement st=con.createStatement();
      st.executeUpdate("insert into reg values(null,'"+fname+"','"+lname+"','"+gender+"','"+place+"','"+post+"','"+pin+"','"+contact+"','"+email+"')");
    %>
   
    <script>
       alert("Successfully registered") 
       window.location="adminhome.jsp"
       
    </script>
    <% 
        
}
%>
<body>
<jsp:include page="header.jsp"/>
<form id="form1" name="form1" method="post" action="">
  <div align="center">
    <table width="380" height="371" border="1">
      <tr>
        <td width="166">First Name</td>
        <td width="198"><label for="textfield"></label>
        <input type="text" name="textfield" id="textfield" required pattern="[A-Z a-z]{3,25}" class="form-control"/></td>
      </tr>
      <tr>
        <td>Last Name</td>
        <td><label for="textfield2"></label>
        <input type="text" name="textfield2" id="textfield2" required pattern="[A-Z a-z]{3,25}" class="form-control"/></td>
      </tr>
      <tr>
        <td>Gender</td>
        <td><input type="radio" name="radio" id="radio"   value="male" checked/>
          <label for="radio">male
            <input type="radio" name="radio" id="radio2" value="female" />
        female</label></td>
      </tr>
      <tr>
        <td>Place</td>
        <td><label for="textfield3"></label>
        <input type="text" name="textfield3" id="textfield3" required pattern="[A-Z a-z0-9]{3,25}" class="form-control" /></td>
      </tr>
      <tr>
        <td>Post</td>
        <td><label for="textfield4"></label>
        <input type="text" name="textfield4" id="textfield4" required pattern="[A-Z a-z0-9]{3,25}" class="form-control" /></td>
      </tr>
      <tr>
        <td>Pin</td>
        <td><label for="textfield5"></label>
        <input type="text" name="textfield5" id="textfield5" required /></td>
      </tr>
      <tr>
        <td>Contact</td>
        <td><input type="text" name="textfield6" id="textfield6" required  pattern="[789][0-9]{9}" class="form-control" /></td>
      </tr>
      <tr>
        <td>Email ID</td>
        <td><input type="text" name="textfield7" id="textfield7" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" class="form-control" /></td>
      </tr>
      <tr>
        <td colspan="2"><div align="center">
          <input type="submit" name="button" id="button" value="Register" />
        </div></td>
      </tr>
    </table>
  </div>
</form>
 <jsp:include page="footer.jsp"/>
</body>
</html>
