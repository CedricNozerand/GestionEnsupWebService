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
	private RequestDispatcher dispatcher = null;

	/**
	 * Default constructor.
	 */
	public StudentChartServlet()
	{
		
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
	public void viewStudent(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		HttpSession session = request.getSession();

		NoteService noteService = new NoteService();

		String mauvais = "", moyens = "", bons = "";

		session.setAttribute("bon", noteService.getLevelsRepartition().get(0)[2]);
		session.setAttribute("moyen", noteService.getLevelsRepartition().get(0)[1]);
		session.setAttribute("mauvais", noteService.getLevelsRepartition().get(0)[0]);

		for (int i = 0; i < noteService.getStudentsByLevel(0).size(); i++)
		{
			mauvais += noteService.getStudentsByLevel(0).get(i)[1] + "<br>";
		}

		for (int i = 0; i < noteService.getStudentsByLevel(1).size(); i++)
		{
			moyens += noteService.getStudentsByLevel(1).get(i)[1] + "<br>";
		}

		for (int i = 0; i < noteService.getStudentsByLevel(2).size(); i++)
		{
			bons += noteService.getStudentsByLevel(2).get(i)[1] + "<br>";
		}

		session.setAttribute("getLevelMauvais", mauvais);
		session.setAttribute("getLevelMoyens", moyens);
		session.setAttribute("getLevelBons", bons);

//		session.setAttribute("repartition", "Pas bon " + noteService.getLevelsRepartition().get(0)[0]);
//		session.setAttribute("repartition1", "Moyen " + noteService.getLevelsRepartition().get(0)[1]);
//		session.setAttribute("repartition2", "Bon " + noteService.getLevelsRepartition().get(0)[2]);

		dispatcher = request.getRequestDispatcher("studentCharts.jsp");

		dispatcher.forward(request, response);
	}
}
