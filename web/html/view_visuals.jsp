<%@page import="newpackage.dbcon"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
  <%
     
     
          dbcon db=new dbcon();
          Connection con=db.getcon();
          Statement st=con.createStatement();
         
      %>  
<body>
<jsp:include page="header.jsp"/>
<form id="form1" name="form1" method="post" action="">
   
  <div align="center">
    <table width="363" border="1">
      <tr>
        <td width="353">Vehicle No           
          <label for="select"></label>
          <select name="select" id="select">
            <%
            ResultSet rs1=st.executeQuery("select number from vehicle");
            while(rs1.next())
            {
            %>
            <option><%=rs1.getString(1)%></option>
            <% }%>
            </select>        
          <input type="submit" name="button" id="button" value="search" /></td>
        </tr>
      
    </table>
  </div>
  <div align="center">
    <%
  if(request.getParameter("button")!=null)
{  
      String vehicle_no=request.getParameter("select");
        
          
                  
  
      %>  
    
    
    <table width="366" border="1">
      <tr>
        <th scope="col">Policename</th>
        <th scope="col">Date</th>
        <th scope="col">Visuals</th>
        </tr>
      <%
      ResultSet rs=st.executeQuery("select pink_visuals.* ,reg.fname,reg.lname  from pink_visuals,reg ,assign  where pink_visuals.vehno=assign.vid and reg.pid=assign.pid and pink_visuals.vehno='"+vehicle_no+"' ");
          while(rs.next())
          {
             
                %>
      <tr>
        <td><%=rs.getString(5)+" "+rs.getString(6)%>&nbsp;</td>
        <td><%= rs.getString(4) %></td>
        <td><img src="../visuals/<%= rs.getString(3) %>" width="100" height="100" ></img></td>
        </tr>
      <% }}%>
    </table>
  </div>
  
 
</form>
<jsp:include page="footer.jsp"/>
</body>
</html>