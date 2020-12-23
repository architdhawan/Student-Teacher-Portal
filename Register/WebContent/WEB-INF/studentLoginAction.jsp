<%
String username1 = request.getParameter("username");
String password1 = request.getParameter("password");

if(username1.equalsIgnoreCase("student") && password1.equalsIgnoreCase("student"))
{
	response.sendRedirect("student.jsp");
}
else
	response.sendRedirect("errorStudentLogin.html");
%>