package org.apache.jsp.html;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<title>Cafe and Bakery | Free CSS Template</title>\r\n");
      out.write("<meta name=\"keywords\" content=\"Cafe and Bakery, Free CSS Template, Pink, Black\" />\r\n");
      out.write("<meta name=\"description\" content=\"Cafe and Bakery is a free CSS template using pink gradient and black colors.\" />\r\n");
      out.write("<link href=\"templatemo_style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/coda-slider.css\" type=\"text/css\" charset=\"utf-8\" />\r\n");
      out.write("\r\n");
      out.write("<script src=\"js/jquery-1.2.6.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"js/jquery.scrollTo-1.3.3.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"js/jquery.localscroll-1.2.5.js\" type=\"text/javascript\" charset=\"utf-8\"></script>\r\n");
      out.write("<script src=\"js/jquery.serialScroll-1.2.1.js\" type=\"text/javascript\" charset=\"utf-8\"></script>\r\n");
      out.write("<script src=\"js/coda-slider.js\" type=\"text/javascript\" charset=\"utf-8\"></script>\r\n");
      out.write("<script src=\"js/jquery.easing.1.3.js\" type=\"text/javascript\" charset=\"utf-8\"></script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<div id=\"slider\">\r\n");
      out.write("\t<div id=\"templatemo_wrapper\">\r\n");
      out.write("\r\n");
      out.write("\t\t<div id=\"templatemo_social\">\r\n");
      out.write("        \r\n");
      out.write("        </div> <!-- end of social -->\r\n");
      out.write("        \r\n");
      out.write("        <div id=\"templatemo_main\">\r\n");
      out.write("        \t<div id=\"templatemo_sidebar\">\r\n");
      out.write("            \t<div id=\"header\"><h1><a href=\"http://www.templatemo.com\">Library</a></h1></div>\r\n");
      out.write("                \r\n");
      out.write("                <div id=\"menu\">\r\n");
      out.write("                    <ul class=\"\">\r\n");
      out.write("                        <li><a href=\"login.jsp\">Home</a></li>\r\n");
      out.write("                    <li><a href=\"reg.jsp\">Police Registration</a></li>\r\n");
      out.write("                    <li><a href=\"vehiclemanage.jsp\">Vehicle Management</a></li>\r\n");
      out.write("                    <li><a href=assign_vehicle.jsp>Assign Vehicle</a></li>\r\n");
      out.write("                    <li><a href=\"track_vehicle.jsp\">Track Vehicle</a></li>\r\n");
      out.write("                    <li><a href=\"view_visuals.jsp\">Visuals</a></li>\r\n");
      out.write("                    <li><a href=\"complaint.jsp\">Complaint</a></li>\r\n");
      out.write("                    <li><a href=\"add_policeno.jsp\">Number Registration</a></li>\r\n");
      out.write("                    <li><a href=\"view_notification.jsp\" >Notification</a></li>\r\n");
      out.write("                    <li><a href=\"view_feedback.jsp\">Feedback</a></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div> <!-- end of sidebar -->\r\n");
      out.write("            \r\n");
      out.write("            <div id=\"templatemo_content\">\r\n");
      out.write("            \t<div class=\"scroll\">\r\n");
      out.write("\t        \t\t<div class=\"scrollContainer\">\r\n");
      out.write("                    \r\n");
      out.write("                    <div class=\"panel\" id=\"home\">\r\n");
      out.write("                        <h2 ><font color=\"pink\">PINK POLICE</font></h2>\r\n");
      out.write("                      <p align=\"justify\">&nbsp;</p>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"cleaner cleaner_h40\"></div>");
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
