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
<% 
    String id=request.getParameter("cid");
    if(request.getParameter("Submit")!=null)
{
     String reply=request.getParameter("textarea");
    
     
    
     
      dbcon db=new dbcon();
      Connection con=db.getcon();
      Statement st=con.createStatement();
      st.executeUpdate("insert into reply values(null,'"+id+"','"+reply+"')");
    %>
   
    <script>
       alert("Successfully reply") 
       window.location="complaint.jsp"
       
    </script>
    <% 
        
}
%>
<body>
<jsp:include page="header.jsp"/>
<form id="form1" name="form1" method="post" action="">
  <p>
    <label for="textarea"></label>
    <textarea name="textarea" id="textarea" cols="45" rows="5"></textarea>
  </p>
  <p> 
    <input type="submit" name="Submit" id="Subit" value="Submit" />
  </p>
</form>
<jsp:include page="footer.jsp"/>
</body>
</html>