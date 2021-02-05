package eu.ensup.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import eu.ensup.domaine.Course;
import eu.ensup.domaine.Student;
import eu.ensup.service.StudentService;
import eu.ensup.service.CourseService;
import eu.ensup.service.ICourseService;
import eu.ensup.service.IStudentService;
import eu.ensup.service.NoteService;

/**
 * Servlet implementation class ViewEtudiant
 */
public class StudentChartServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	private IStudentService studentService;
	private ICourseService courseService;
	private RequestDispatcher dispatcher = null;

	/**
	 * Default constructor.
	 */
	public StudentChartServlet()
	{
		studentService = new StudentService();
		courseService = new CourseService();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		viewStudent(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

	}

	/**
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void viewStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		HttpSession session = request.getSession();
		
		NoteService noteService= new NoteService();

//		List<Student> listStudent = studentService.getAllStudents();
//		List<Course> listCourse = courseService.getAllCourses();
		
		session.setAttribute("bon", noteService.getLevelsRepartition().get(0)[2]);
		session.setAttribute("moyen", noteService.getLevelsRepartition().get(0)[1]);
		session.setAttribute("mauvais", noteService.getLevelsRepartition().get(0)[0]);
		
//		session.setAttribute("repartition", "Pas bon " + noteService.getLevelsRepartition().get(0)[0]);
//		session.setAttribute("repartition1", "Moyen " + noteService.getLevelsRepartition().get(0)[1]);
//		session.setAttribute("repartition2", "Bon " + noteService.getLevelsRepartition().get(0)[2]);

		dispatcher = request.getRequestDispatcher("studentCharts.jsp");	

		dispatcher.forward(request, response);
	}
}
