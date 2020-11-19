package eu.ensup.service;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.GenericType;
import com.sun.jersey.api.client.WebResource;

import eu.ensup.domaine.Student;

/**
 * Classe StudentService : Fait le lien entre le lanceur et le DAO concernant les étudiants.
 * @author 33651
 *
 */
public class StudentService implements IStudentService
{
	// Fields
 
    private static final Logger LOG = LogManager.getLogger(StudentService.class);
    
    private static final String URL = "http://localhost:8080/web/";

	// Constructors
	
	public StudentService()
	{
		super();
		LOG.info("Démarrage du service StudentService");
	}

	// Methods
	
	/* (non-Javadoc)
	 * @see eu.ensup.jpaGestionEnsup.service.IStudentService#createStudent(eu.ensup.jpaGestionEnsup.domaine.Student)
	 */
	public void createStudent(Student student)
	{
		LOG.info("Appel de la méthode createStudent() du dao");

		Client client = Client.create();

		WebResource webResource = client.resource(URL + "rest/studentService/createStudent");

		String input = student.toJson();

		ClientResponse response = webResource.type("application/json").post(ClientResponse.class, input);
	}
	
	/* (non-Javadoc)
	 * @see eu.ensup.jpaGestionEnsup.service.IStudentService#getStudent(int)
	 */
	public Student getStudent(int id)
	{
		LOG.info("Appel de la méthode getStudent() du dao");
		
		Client client = Client.create();

		WebResource webResource = client.resource(URL + "rest/studentService/getStudent/" + id);

		ClientResponse response = webResource.accept("application/json").get(ClientResponse.class);
		
		return response.getEntity(Student.class);
	}
	
	/* (non-Javadoc)
	 * @see eu.ensup.jpaGestionEnsup.service.IStudentService#getStudentByMail(java.lang.String)
	 */
	public Student getStudentByMail(String mail)
	{
		LOG.info("Appel de la méthode getStudentByMail() du dao");
		
		Client client = Client.create();

		WebResource webResource = client.resource(URL + "rest/studentService/getStudentByMail/" + mail);

		ClientResponse response = webResource.accept("application/json").get(ClientResponse.class);
		
		return response.getEntity(Student.class);
	}
	
	/* (non-Javadoc)
	 * @see eu.ensup.jpaGestionEnsup.service.IStudentService#getAllStudents()
	 */
	public List<Student> getAllStudents()
	{
		LOG.info("Appel de la méthode getAllStudents() du dao");
		
		Client client = Client.create();

		WebResource webResource = client.resource(URL + "rest/studentService/getAllStudents");

		ClientResponse response = webResource.accept("application/json").get(ClientResponse.class);
		
		return response.getEntity(new GenericType<List<Student>>(){});
	}
	
	/* (non-Javadoc)
	 * @see eu.ensup.jpaGestionEnsup.service.IStudentService#deleteStudent(int)
	 */
	public void deleteStudent(int id)
	{
		LOG.info("Appel de la méthode deleteStudent() du dao");
		
		Client client = Client.create();

		WebResource webResource = client.resource(URL + "rest/studentService/deleteStudent");
		
		String input = "{\"id\":" + id + "}";

		ClientResponse response = webResource.type("application/json").delete(ClientResponse.class, input);
	}
	
	/* (non-Javadoc)
	 * @see eu.ensup.jpaGestionEnsup.service.IStudentService#updateStudent(eu.ensup.jpaGestionEnsup.domaine.Student)
	 */
	public void updateStudent(int oldStudentId, Student student)
	{
		LOG.info("Appel de la méthode updateStudent() du dao");
		
		Client client = Client.create();

		WebResource webResource =
				client.resource(URL + "rest/studentService/updateStudent/" + oldStudentId);

		String input = student.toJson();

		ClientResponse response = webResource.type("application/json").put(ClientResponse.class, input);
	}
	
	/**
	 * Recherche un ou plusieurs étudiants en fonction de leur données.
	 * @param firstName Le prénom du ou des étudiants à chercher.
	 * @param lastName Le nom de famille du ou des étudiants à chercher.
	 * @return La liste des étudiants correspondant au prénom et au nom entrés.
	 */
	public List<Student> searchStudent(String firstName, String lastName)
	{
		LOG.info("Appel de la méthode searchStudent() du dao");
		
		Client client = Client.create();

		WebResource webResource =
				client.resource(URL + "rest/studentService/searchStudent")
				.queryParam("firstName", firstName)
				.queryParam("lastName", lastName);

		ClientResponse response = webResource.accept("application/json").get(ClientResponse.class);
		
		return response.getEntity(new GenericType<List<Student>>(){});
	}
}
