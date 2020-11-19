package eu.ensup.service;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.fasterxml.jackson.jaxrs.json.JacksonJsonProvider;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.GenericType;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.DefaultClientConfig;

import eu.ensup.domaine.Course;

/**
 * Classe CourseService : Fait le lien entre le lanceur et le DAO concernant les
 * cours.
 * 
 * @author 33651
 *
 */
public class CourseService implements ICourseService
{
	// Fields
 
    private static final Logger LOG = LogManager.getLogger(CourseService.class);

	// Constructors

	/**
	 * Construit le CourseService en fonction de l'entityManager.
	 * 
	 * @param entityManager
	 */
	public CourseService()
	{
		super();
		LOG.info("Démarrage du service CourseService");
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * eu.ensup.jpaGestionEnsup.service.ICourseService#associateCourse(java.lang.
	 * String, int)
	 */
	public void associateCourse(String course, int id)
	{
		LOG.info("Appel de la méthode associateCourse() du dao");
		
		Client client = new Client();

		WebResource webResource = client.resource("http://localhost:8080/gestionWebService-0.0.1-SNAPSHOT/rest/courseService/associateCourse");

		String input = "{\"course\":\"" + course + "\",\"id\":" + id + "}";
		System.out.println("############################" + input);

		ClientResponse response = webResource.type("application/json").post(ClientResponse.class, input);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see eu.ensup.jpaGestionEnsup.service.ICourseService#getAllCourses()
	 */
	public List<Course> getAllCourses()
	{
		LOG.info("Appel de la méthode getAllCourses() du dao");
		
		Client client = Client.create();

		WebResource webResource = client.resource("http://localhost:8080/gestionWebService-0.0.1-SNAPSHOT/rest/courseService/getAllCourses");

		ClientResponse response = webResource.accept("application/json").get(ClientResponse.class);
		
		return response.getEntity(new GenericType<List<Course>>(){});
	}
}
