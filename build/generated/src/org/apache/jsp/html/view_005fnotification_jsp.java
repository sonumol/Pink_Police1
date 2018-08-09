package org.apache.jsp.html;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import newpackage.dbcon;
import java.sql.*;

public final class view_005fnotification_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<title>Untitled Document</title>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("<form id=\"form1\" name=\"form1\" method=\"post\" action=\"\">\r\n");
      out.write("  <table width=\"350\" border=\"1\">\r\n");
      out.write("    <tr>\r\n");
      out.write("      <th width=\"149\" scope=\"col\">User Name</th>\r\n");
      out.write("      <th width=\"146\" scope=\"col\">Message</th>\r\n");
      out.write("      <th width=\"184\" scope=\"col\">Date</th>\r\n");
      out.write("    </tr>\r\n");
      out.write("         ");

          dbcon db=new dbcon();
          Connection con=db.getcon();
          Statement st=con.createStatement();
          ResultSet rs=st.executeQuery("select user_reg.name,notification.messaage,notification.date ,notification.nid from notification inner join user_reg on notification.uid=user_reg.uid");
          while(rs.next())
          {
         
      
      out.write("  \r\n");
      out.write("    <tr>\r\n");
      out.write("      <td>");
      out.print( rs.getString(1) );
      out.write("</td>\r\n");
      out.write("      <td>");
      out.print( rs.getString(2) );
      out.write("</td>\r\n");
      out.write("      <td>");
      out.print( rs.getString(3) );
      out.write("</td>\r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("      <td><a href=\"reply.jsp?cid=");
      out.print(rs.getString(4));
      out.write("\">Reply</a></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("      ");

          }
      
      out.write("\r\n");
      out.write("    <tr>\r\n");
      out.write("      <td>&nbsp;</td>\r\n");
      out.write("      <td>&nbsp;</td>\r\n");
      out.write("      <td>&nbsp;</td>\r\n");
      out.write("    </tr>\r\n");
      out.write("  </table>\r\n");
      out.write("</form>\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
