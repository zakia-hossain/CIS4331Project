package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>CIS 4331 Project</title>\n");
      out.write("        <style> \n");
      out.write("            input[type=button], input[type=submit], input[type=reset] {\n");
      out.write("                background-color: #395697;\n");
      out.write("                border: none;\n");
      out.write("                color: white;\n");
      out.write("                padding: 3px 3px;\n");
      out.write("                text-decoration: none;\n");
      out.write("                margin: 5px 5px;\n");
      out.write("                cursor: pointer;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>käm?ent</h1>\n");
      out.write("        <form action=\"allCustomer.jsp\">\n");
      out.write("            Click me to see all the customers working with us (^-^) 🠗 <br>\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            <input type=\"submit\" value=\"&nbsp;&nbsp;CLICK ME!&nbsp;&nbsp;\">\n");
      out.write("        </form>\n");
      out.write("        <br>\n");
      out.write("        <form action=\"customer.jsp\">\n");
      out.write("            Company ID: <br>\n");
      out.write("            <a href=\"sUser.jsp\"></a>\n");
      out.write("            <input type=\"text\" name=\"customerID\">\n");
      out.write("            <input type=\"submit\" value=\"&nbsp;Enter&nbsp;\">\n");
      out.write("        </form> \n");
      out.write("        <br>\n");
      out.write("        <form action=\"aggr.jsp\">\n");
      out.write("            The top-20 users by the number of comments they post <br>\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            <input type=\"submit\" value=\"&nbsp;&nbsp;HERE&nbsp;&nbsp;\">\n");
      out.write("        </form>\n");
      out.write("        <br>\n");
      out.write("        <form action=\"aggr1.jsp\">\n");
      out.write("            The top-20 users by the number of replies they post <br>\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            <input type=\"submit\" value=\"&nbsp;&nbsp;HERE&nbsp;&nbsp;\">\n");
      out.write("        </form>\n");
      out.write("        <br>\n");
      out.write("        <form action=\"aggr2.jsp\">\n");
      out.write("            The top-20 users by the number of like/dislike they post <br>\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            <input type=\"submit\" value=\"&nbsp;&nbsp;HERE&nbsp;&nbsp;\">\n");
      out.write("        </form>\n");
      out.write("        <br>\n");
      out.write("        <form action=\"aggr3.jsp\">\n");
      out.write("            The top-10 websites with the most requests for article comments <br>\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            <input type=\"submit\" value=\"&nbsp;&nbsp;HERE&nbsp;&nbsp;\">\n");
      out.write("        </form>\n");
      out.write("        <br>\n");
      out.write("        <form action=\"aggr4.jsp\">\n");
      out.write("            The top-10 websites with the most sales this month/week/year <br>\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            <input type=\"submit\" value=\"&nbsp;&nbsp;HERE&nbsp;&nbsp;\">\n");
      out.write("        </form>\n");
      out.write("        <br>\n");
      out.write("        <form action=\"listAllSeniorUsers.jsp\">\n");
      out.write("            Click me to see all the senior users selected by our customers for their specific companies<br>\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            <input type=\"submit\" value=\"&nbsp;&nbsp;CLICK ME!&nbsp;&nbsp;\">\n");
      out.write("        </form>\n");
      out.write("        <br>\n");
      out.write("        <form action=\"sUser.jsp\">\n");
      out.write("            If you are selected as a senior user by our customers, please enter your user ID and the company ID to review flagged comments.<br>\n");
      out.write("            Company ID: \n");
      out.write("            <input type=\"text\" name=\"customerID\"><br>\n");
      out.write("            User ID:\n");
      out.write("            <input type=\"text\" name=\"seniorUserID\">\n");
      out.write("            <input type=\"submit\" value=\"&nbsp;Enter&nbsp;\">\n");
      out.write("        </form> \n");
      out.write("</html>\n");
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
