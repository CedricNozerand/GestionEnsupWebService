package eu.ensup.servlets;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import eu.ensup.domaine.User;
import eu.ensup.service.UserService;
import eu.ensup.service.IUserService;
import eu.ensup.service.NoteService;

/**
 * Servlet implementation class ConnexionServlet
 */
@WebServlet("/Connexion")
public class ConnectionServlet extends HttpServlet
{

	private static final long serialVersionUID = 1L;
	private IUserService userService;
	private RequestDispatcher dispatcher = null;

	/**
	 * Default constructor.
	 */
	public ConnectionServlet()
	{
		userService = new UserService();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		dispatcher = request.getRequestDispatcher("index.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		connect(request, response);
	}

	/**
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	public void connect(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String mauvais = "", moyens = "", bons = "";
		NoteService noteService= new NoteService();
		
		
		User user = userService.getUser(request.getParameter("login"), request.getParameter("password"));

		// page de retour

		if (user != null && user.getLogin().equalsIgnoreCase(request.getParameter("login"))
				&& user.getPassword().equalsIgnoreCase(request.getParameter("password")))
		{
			dispatcher = request.getRequestDispatcher("home.jsp");
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			session.setAttribute("repartition", "Pas bon " + noteService.getLevelsRepartition().get(0)[0]);
			session.setAttribute("repartition1", "Moyen " + noteService.getLevelsRepartition().get(0)[1]);
			session.setAttribute("repartition2", "Bon " + noteService.getLevelsRepartition().get(0)[2]);
			
			for(int i = 0; i < noteService.getStudentsByLevel(0).size(); i++) {
				mauvais += "'"+noteService.getStudentsByLevel(0).get(i)[1] + "',";
			}
			
			for(int i = 0; i < noteService.getStudentsByLevel(1).size(); i++) {
				moyens += "'"+noteService.getStudentsByLevel(1).get(i)[1] + "',";
			}
			
			for(int i = 0; i < noteService.getStudentsByLevel(2).size(); i++) {
				bons += "'"+noteService.getStudentsByLevel(2).get(i)[1] + "',";
			}
					
			session.setAttribute("getLevelMauvais", "<br>mauvais " + mauvais);
			session.setAttribute("getLevelMoyens", "<br>moyens " + moyens);
			session.setAttribute("getLevelBons", "<br>bons " + bons);
		}
		else
		{
			dispatcher = request.getRequestDispatcher("index.jsp");
		}

		dispatcher.forward(request, response);
	}
}