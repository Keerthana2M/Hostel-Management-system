/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.105
 * Generated at: 2025-05-29 16:59:05 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(4);
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <title>Hostel Management System</title>\r\n");
      out.write("    <style>\r\n");
      out.write("        body {\r\n");
      out.write("            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;\r\n");
      out.write("            background: linear-gradient(to right, #fce3ec, #ffe5ec);\r\n");
      out.write("            margin: 0;\r\n");
      out.write("            padding: 0;\r\n");
      out.write("            text-align: center;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        h1 {\r\n");
      out.write("            margin-top: 50px;\r\n");
      out.write("            font-size: 2.5em;\r\n");
      out.write("            color: #ff4d6d;\r\n");
      out.write("            text-shadow: 1px 1px 2px #fff0f3;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        ul {\r\n");
      out.write("            list-style: none;\r\n");
      out.write("            padding: 0;\r\n");
      out.write("            margin-top: 40px;\r\n");
      out.write("            max-width: 300px;\r\n");
      out.write("            margin-left: auto;\r\n");
      out.write("            margin-right: auto;\r\n");
      out.write("            text-align: left;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        li {\r\n");
      out.write("            margin: 15px 0;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        a {\r\n");
      out.write("            text-decoration: none;\r\n");
      out.write("            background-color: #ff4d6d;\r\n");
      out.write("            color: white;\r\n");
      out.write("            padding: 12px 25px;\r\n");
      out.write("            border-radius: 30px;\r\n");
      out.write("            font-size: 1.1em;\r\n");
      out.write("            transition: background-color 0.3s ease, transform 0.2s ease;\r\n");
      out.write("            box-shadow: 2px 4px 6px rgba(0, 0, 0, 0.1);\r\n");
      out.write("            display: inline-block;\r\n");
      out.write("            width: 100%;\r\n");
      out.write("            box-sizing: border-box;\r\n");
      out.write("            text-align: center;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        a:hover {\r\n");
      out.write("            background-color: #ff6b81;\r\n");
      out.write("            transform: scale(1.05);\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        /* Centered container for Generate Report button */\r\n");
      out.write("        .generate-report-container {\r\n");
      out.write("            margin-top: 50px;\r\n");
      out.write("            text-align: center;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .generate-report-button {\r\n");
      out.write("            display: inline-block;\r\n");
      out.write("            padding: 14px 40px;\r\n");
      out.write("            background-color: #ff4d6d;\r\n");
      out.write("            color: white;\r\n");
      out.write("            border-radius: 30px;\r\n");
      out.write("            font-size: 1.3em;\r\n");
      out.write("            box-shadow: 2px 4px 8px rgba(0,0,0,0.15);\r\n");
      out.write("            text-decoration: none;\r\n");
      out.write("            transition: background-color 0.3s ease, transform 0.2s ease;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .generate-report-button:hover {\r\n");
      out.write("            background-color: #ff6b81;\r\n");
      out.write("            transform: scale(1.1);\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .container {\r\n");
      out.write("            max-width: 600px;\r\n");
      out.write("            margin: 0 auto;\r\n");
      out.write("            background: #fff0f3;\r\n");
      out.write("            padding: 30px;\r\n");
      out.write("            border-radius: 20px;\r\n");
      out.write("            box-shadow: 0 8px 16px rgba(0,0,0,0.1);\r\n");
      out.write("            margin-top: 60px;\r\n");
      out.write("        }\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <h1> Hostel Management System 🏠</h1>\r\n");
      out.write("        \r\n");
      out.write("        <ul>\r\n");
      out.write("            <li><a href=\"studentadd.jsp\">Add Student</a></li>\r\n");
      out.write("            <li><a href=\"DisplayStudentsServlet\">View Students</a></li>\r\n");
      out.write("            <li><a href=\"studentupdate.jsp\">Update Student</a></li>\r\n");
      out.write("            <li><a href=\"studentdelete.jsp\">Delete Student</a></li>\r\n");
      out.write("            <li><a href=\"ReportCriteriaServlet\">Generate Report</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("\r\n");
      out.write("       \r\n");
      out.write("    </div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
