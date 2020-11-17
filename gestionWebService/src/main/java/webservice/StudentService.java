package webservice;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import dao.IStudentDao;
import dao.StudentDao;
import domaine.Student;

/**
 * Classe StudentService : Fait le lien entre le lanceur et le DAO concernant les étudiants.
 * @author 33651
 *
 */
@Path("/studentService")
public class StudentService implements IStudentService
{
	// Fields
 
    private static final Logger LOG = LogManager.getLogger(StudentService.class);
	
	private IStudentDao studentDao;

	// Constructors
	
	public StudentService()
	{
		super();
		LOG.info("Démarrage du service StudentService");
		studentDao = new StudentDao();
	}

	// Methods
	
	/* (non-Javadoc)
	 * @see eu.ensup.jpaGestionEnsup.service.IStudentService#createStudent(eu.ensup.jpaGestionEnsup.domaine.Student)
	 */
	@POST
	@Path("/createStudent")
	@Consumes(MediaType.APPLICATION_JSON)
	public void createStudent(Student student)
	{
		LOG.info("Appel de la méthode createStudent() du dao");
		studentDao.createStudent(student);
	}
	
	/* (non-Javadoc)
	 * @see eu.ensup.jpaGestionEnsup.service.IStudentService#getStudent(int)
	 */
	@GET
	@Path("/getStudent")
	@Produces(MediaType.APPLICATION_JSON)
	public Student getStudent(int id)
	{
		LOG.info("Appel de la méthode getStudent() du dao");
		return studentDao.getStudent(id);
	}
	
	/* (non-Javadoc)
	 * @see eu.ensup.jpaGestionEnsup.service.IStudentService#getStudentByMail(java.lang.String)
	 */
	@GET
	@Path("/getStudentByMail")
	@Produces(MediaType.APPLICATION_JSON)
	public Student getStudentByMail(String mail)
	{
		LOG.info("Appel de la méthode getStudentByMail() du dao");
		return studentDao.getStudentByMail(mail);
	}
	
	/* (non-Javadoc)
	 * @see eu.ensup.jpaGestionEnsup.service.IStudentService#getAllStudents()
	 */
	@GET
	@Path("/getAllStudents")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Student> getAllStudents()
	{
		LOG.info("Appel de la méthode getAllStudents() du dao");
		return studentDao.getAllStudents();
	}
	
	/* (non-Javadoc)
	 * @see eu.ensup.jpaGestionEnsup.service.IStudentService#deleteStudent(int)
	 */
	@POST
	@Path("/deleteStudent")
	@Consumes(MediaType.APPLICATION_JSON)
	public void deleteStudent(int id)
	{
		LOG.info("Appel de la méthode deleteStudent() du dao");
		studentDao.deleteStudent(id);
	}
	
	/* (non-Javadoc)
	 * @see eu.ensup.jpaGestionEnsup.service.IStudentService#updateStudent(eu.ensup.jpaGestionEnsup.domaine.Student)
	 */
	@POST
	@Path("/updateStudent")
	@Consumes(MediaType.APPLICATION_JSON)
	public void updateStudent(int oldStudentId, Student student)
	{
		LOG.info("Appel de la méthode updateStudent() du dao");
		studentDao.updateStudent(oldStudentId, student);
	}
	
	/**
	 * Recherche un ou plusieurs étudiants en fonction de leur données.
	 * @param firstName Le prénom du ou des étudiants à chercher.
	 * @param lastName Le nom de famille du ou des étudiants à chercher.
	 * @return La liste des étudiants correspondant au prénom et au nom entrés.
	 */
	@GET
	@Path("/searchStudent")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Student> searchStudent(String firstName, String lastName)
	{
		LOG.info("Appel de la méthode searchStudent() du dao");
		return studentDao.searchStudent(firstName, lastName);
	}
}
