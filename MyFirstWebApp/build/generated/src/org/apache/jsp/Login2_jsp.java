package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link href=\"//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("        <script src=\"//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"//code.jquery.com/jquery-1.11.1.min.js\"></script>\n");
      out.write("\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            .panel-heading {\n");
      out.write("                padding: 5px 15px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .panel-footer {\n");
      out.write("                padding: 1px 15px;\n");
      out.write("                color: #A0A0A0;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .profile-img {\n");
      out.write("                width: 96px;\n");
      out.write("                height: 96px;\n");
      out.write("                margin: 0 auto 10px;\n");
      out.write("                display: block;\n");
      out.write("                -moz-border-radius: 50%;\n");
      out.write("                -webkit-border-radius: 50%;\n");
      out.write("                border-radius: 50%;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\" style=\"margin-top:40px\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-6 col-md-4 col-md-offset-4\">\n");
      out.write("                    <div class=\"panel panel-default\">\n");
      out.write("                        <div class=\"panel-heading\">\n");
      out.write("                            <strong> Sign in to continue</strong>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"panel-body\">\n");
      out.write("                            <form role=\"form\" action=\"Login2\" method=\"POST\">\n");
      out.write("                                <fieldset>\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"center-block\">\n");
      out.write("                                            <img class=\"profile-img\"\n");
      out.write("                                                 src=\"https://i.pinimg.com/736x/9d/6a/b3/9d6ab305ff69b730d01a1f361da7a801.jpg\" alt=\"\">\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col-sm-12 col-md-10  col-md-offset-1 \">\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <div class=\"input-group\">\n");
      out.write("                                                    <span class=\"input-group-addon\">\n");
      out.write("                                                        <i class=\"glyphicon glyphicon-user\"></i>\n");
      out.write("                                                    </span> \n");
      out.write("                                                    <input class=\"form-control\" placeholder=\"Username\" name=\"username\" type=\"text\" autofocus required>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <div class=\"input-group\">\n");
      out.write("                                                    <span class=\"input-group-addon\">\n");
      out.write("                                                        <i class=\"glyphicon glyphicon-lock\"></i>\n");
      out.write("                                                    </span>\n");
      out.write("                                                    <input class=\"form-control\" placeholder=\"Password\" name=\"password\" type=\"password\" required>\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"form-group\">\n");
      out.write("                                                <input type=\"submit\" class=\"btn btn-lg btn-primary btn-block\" value=\"Sign in\">\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </fieldset>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
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
