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
<% if(request.getParameter("button")!=null)
{
     String uname=request.getParameter("textfield");
      String password=request.getParameter("textfield2"); 
      dbcon db=new dbcon();
      Connection con=db.getcon();
      Statement st=con.createStatement();
      ResultSet rs= st.executeQuery("select * from login where uname='"+uname+"' and pswd='"+password+"' and utype='admin' ");
    if(rs.next())
    {
        session.setAttribute("lid", rs.getString(1));
     response.sendRedirect("adminhome.jsp");
    }
    else
    {%>
    <script>
       alert("invalid") 
       
    </script>
        
    <% }
}
%>
<body>
    <jsp:include page="head.jsp"/>
<form id="form1" name="form1" method="post" action="">
  <div align="center">
    <table width="341" border="0" >
      <tr>
        <td width="112">Username</td>
        <td width="213"><label for="textfield"></label>
        <input type="text" name="textfield" id="textfield" title="Atleast 6 characters" required   /></td>
      </tr>
      <tr>
        <td>Password</td>
        <td><label for="textfield2"></label>
        <input type="password" name="textfield2" id="textfield2" required /></td>
      </tr>
      <tr>
        <td colspan="2">   <div align="center">
          <input type="submit" name="button" id="button" value="LOGIN" />
        </div></td>
      </tr>
    </table>
  </div>
</form>
    <jsp:include page="footer.jsp"/>
</body>
</html>
