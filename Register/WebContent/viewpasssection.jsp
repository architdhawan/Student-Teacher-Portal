<%@ page import = "Dao.JSconnector"%>
<%@ page import = "java.sql.*"%>
<%
String secton = request.getParameter("secton");
String dat = request.getParameter("dat");
String month = request.getParameter("month");
String view = request.getParameter("datre");
application.setAttribute("hitCounter", "viewpasssection");
application.setAttribute("hitCounters", view);
request.setAttribute("sectonteacher", secton);
request.setAttribute("dates", dat);
request.setAttribute("monthss", month);
request.getRequestDispatcher("TeacherHome.jsp").forward(request, response);
%>