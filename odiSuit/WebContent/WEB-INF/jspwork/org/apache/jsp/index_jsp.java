/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.43
 * Generated at: 2019-09-24 20:46:13 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import member.model.vo.Member;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/views/common/header.jsp", Long.valueOf(1569357645399L));
    _jspx_dependants.put("/views/common/footer.jsp", Long.valueOf(1569357971549L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("member.model.vo.Member");
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

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
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
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>오디에서 정장빌려</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("\r\n");

	Member loginMem = (Member)session.getAttribute("loginMem");
	String message = (String)session.getAttribute("msg");

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print( request.getContextPath() );
      out.write("/resources/css/odi-theme.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<!-- common/HEADER -->\r\n");
      out.write("    <header>\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"header-top-nav\">\r\n");
      out.write("            <ul class=\"header-top-right\">\r\n");
      out.write("               \t<li>고객센터</li>\r\n");
      out.write("                ");
 if (loginMem == null) { 
      out.write("\r\n");
      out.write("                \t<li onclick=\"login();\">로그인</li>\r\n");
      out.write("                ");
 } else { 
      out.write("\r\n");
      out.write("                \t<li onclick=\"logout();\">로그아웃</li>\r\n");
      out.write("                ");
 } 
      out.write("\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"header-main\">\r\n");
      out.write("            <div class=\"header-logo\">\r\n");
      out.write("                <img src=\"");
      out.print( request.getContextPath() );
      out.write("/resources/images/main-logo.png\" alt=\"\" onclick=\"location.href='");
      out.print( request.getContextPath() );
      out.write("'\">\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"nav\">\r\n");
      out.write("            <ul class=\"nav-bar\">\r\n");
      out.write("                <li>정장대여</li>\r\n");
      out.write("                <li>커뮤니티</li>\r\n");
      out.write("                <li onclick=\"myPage();\">마이페이지</li>\r\n");
      out.write("                <li>매장찾기</li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"line-notice-wrap\">\r\n");
      out.write("            <a href=\"#\">[공지] 추석 연휴 기간 사이트 점검</a>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("    </header>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.4.1.min.js\"></script>\r\n");
      out.write("    <script>\r\n");
      out.write("    \r\n");
      out.write("\t\t$(function(){\r\n");
      out.write("\t\t\tvar msg = \"");
      out.print( message );
      out.write("\";\r\n");
      out.write("\t\t\tif(msg != \"null\"){\r\n");
      out.write("\t\t\t\talert(msg);\r\n");
      out.write("\t\t\t\t");
 session.removeAttribute("msg");
      out.write("\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t});\r\n");
      out.write("\t\t\r\n");
      out.write("        var flag = 0;\r\n");
      out.write("\r\n");
      out.write("        $(window).scroll(function(){\r\n");
      out.write("            if ($(this).scrollTop() >= 150 && flag == 0) {\r\n");
      out.write("                flag = 1;\r\n");
      out.write("                $(\"header\").stop().animate({'height':'86.8px'},{queue:false, duration:300});\r\n");
      out.write("                $(\".header-top-nav\").stop().animate({'height':'0px'},{queue:false, duration:300});\r\n");
      out.write("                $(\".line-notice-wrap\").stop().animate({'height':'0px','display':'none'},{queue:false, duration:300});\r\n");
      out.write("            } else if ($(this).scrollTop() < 150 && flag == 1) {\r\n");
      out.write("                flag = 0;\r\n");
      out.write("                $(\"header\").stop().animate({'height':'140px'},{queue:false, duration:300});\r\n");
      out.write("                $(\".header-top-nav\").stop().animate({'height':'20%'},{queue:false, duration:300});\r\n");
      out.write("                $(\".line-notice-wrap\").stop().animate({'height':'18%'},{queue:false, duration:300});\r\n");
      out.write("            }\r\n");
      out.write("        })\r\n");
      out.write("        \r\n");
      out.write("        function login(){\r\n");
      out.write("            location.href = \"");
      out.print( request.getContextPath() );
      out.write("/views/common/login.jsp\";\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        function logout(){\r\n");
      out.write("            location.href = \"");
      out.print( request.getContextPath() );
      out.write("/logout.me\";\r\n");
      out.write("        }\r\n");
      out.write("        \r\n");
      out.write("        function myPage(){\r\n");
      out.write("            location.href = \"");
      out.print( request.getContextPath() );
      out.write("/views/user/myPage.jsp\";\r\n");
      out.write("        }\r\n");
      out.write("    </script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("\t<!-- MAIN PAGE -->\r\n");
      out.write("    <div class=\"main-section\">\r\n");
      out.write("\t\t\r\n");
      out.write("        <section class=\"main-jumbotron\">\r\n");
      out.write("            <div class=\"dropdown sel-location\">\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"dropdown sel-date\">\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"btn-search search-main\">\r\n");
      out.write("                SEARCH\r\n");
      out.write("            </div>\r\n");
      out.write("        </section>\r\n");
      out.write("\r\n");
      out.write("        <section class=\"sub-section\">\r\n");
      out.write("            <input type=\"text\" placeholder=\"양복점 이름으로 검색\">\r\n");
      out.write("            <div class=\"btn-search-shop\">\r\n");
      out.write("                SEARCH\r\n");
      out.write("            </div>\r\n");
      out.write("        </section>\r\n");
      out.write("\r\n");
      out.write("        <article class=\"main-article\">\r\n");
      out.write("            <div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            <div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </article>\r\n");
      out.write("        <section class=\"main-ad-left\">\r\n");
      out.write("\r\n");
      out.write("        </section><section class=\"main-ad-right\">\r\n");
      out.write("\r\n");
      out.write("        </section>\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("    <title>footer</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.print( request.getContextPath() );
      out.write("/resources/css/odi-theme.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("    <!-- common/FOOTER -->\r\n");
      out.write("    <footer>\r\n");
      out.write("        <hr style=\"margin: 0;\">\r\n");
      out.write("\r\n");
      out.write("        <div class=\"footer-left\">\r\n");
      out.write("            <img src=\"");
      out.print( request.getContextPath() );
      out.write("/resources/images/main-logo.png\" alt=\"\" id=\"footer-logo\" onclick=\"gohome();\">\r\n");
      out.write("        </div><div class=\"footer-info\">\r\n");
      out.write("            <div id=\"footer-info1\" onclick=\"gohome();\">오디</div>\r\n");
      out.write("            <div id=\"footer-info2\">이용약관</div>\r\n");
      out.write("            <div id=\"footer-info3\">개인정보취급방침</div><br>\r\n");
      out.write("            <div>통신판매업신고번호 2019-서울한강-1234</div><br>\r\n");
      out.write("            <div>주소 : 서울특별시 강남구 역삼동</div><br>\r\n");
      out.write("            <div>project_cin@naver.com</div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"footer-copyright\">\r\n");
      out.write("            COPYRIGHT &#169; CIN\r\n");
      out.write("        </div>\r\n");
      out.write("    </footer>\r\n");
      out.write("\r\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.4.1.min.js\"></script>\r\n");
      out.write("    <script>\r\n");
      out.write("        function gohome(){\r\n");
      out.write("            location.href = \"");
      out.print( request.getContextPath() );
      out.write("\";\r\n");
      out.write("        }\r\n");
      out.write("    </script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
