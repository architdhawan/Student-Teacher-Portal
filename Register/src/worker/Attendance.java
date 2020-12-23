package worker;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.RegisterDao;
import controller.StudentAttendance;
@WebServlet("/attendance")
public class Attendance extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String []roll = req.getParameterValues("rollno");
		String []name = req.getParameterValues("name");
		String date = req.getParameter("date");
		String subject = req.getParameter("subject");
		String semester = req.getParameter("semester");
		String section = req.getParameter("section");
		String attendance[] = new String[100];
		for(int i=0;i<roll.length;i++) {
			attendance[i] = req.getParameter("attendance"+roll[i]);
		}
		String mon[] = date.split("-");
		String month;
		if(mon[1] == "01") {
			month = "January";
		}
		else if(mon[1] == "02") {
			month = "February";
		}
		else if(mon[1] == "03") {
			month = "March";
		}
		else if(mon[1] == "04") {
			month = "April";
		}
		else if(mon[1] == "05") {
			month = "May";
		}
		else if(mon[1] == "06") {
			month = "June";
		}
		else if(mon[1] == "07") {
			month = "July";
		}
		else if(mon[1] == "08") {
			month = "August";
		}
		else if(mon[1] == "09") {
			month = "September";
		}
		else if(mon[1] == "10") {
			month = "October";
		}
		else if(mon[1] == "11") {
			month = "November";
		}
		else{
			month = "December";
		}
		int result=0;
		for(int j=0;j<roll.length;j++) {
			StudentAttendance sa=new StudentAttendance();
			sa.setRollno(roll[j]);
			sa.setDate(date);
			sa.setAttendance(attendance[j]);
			sa.setName(name[j]);
			sa.setSection(section);
			sa.setSemester(semester);
			sa.setSubject(subject);
			sa.setMonth(month);
			RegisterDao rDao = RegisterDao.getRegisterDao();
			rDao.insertatt(sa);
		}
		if(result>0) {
			resp.getWriter().print("Attendance updated successfully");
		}
		else {
			resp.getWriter().print("Whoops something went wrong....");
		}
	}

}
