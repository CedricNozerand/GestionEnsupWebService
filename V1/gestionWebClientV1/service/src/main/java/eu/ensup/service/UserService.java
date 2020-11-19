package eu.ensup.service;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.fasterxml.jackson.jaxrs.json.JacksonJsonProvider;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.DefaultClientConfig;

import eu.ensup.domaine.User;

/**
 * Classe UserService : Fait le lien entre le lanceur et le DAO concernant les
 * utilisateurs.
 * 
 * @author 33651
 *
 */
public class UserService implements IUserService
{
	// Fields

	private static final Logger LOG = LogManager.getLogger(UserService.class);
    
    private static final String URL = "http://localhost:8080/web/";

	// Constructors

	/**
	 * Construit le UserService en fonction d'un entityManager.
	 * 
	 * @param entityManager
	 */
	public UserService()
	{
		super();
		LOG.info("Démarrage du service UserService");
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see eu.ensup.jpaGestionEnsup.service.IUserService#getUser(java.lang.String,
	 * java.lang.String)
	 */
	public User getUser(String login, String password)
	{
		LOG.info("Appel de la méthode getUser() du dao");
		
		DefaultClientConfig defaultClientConfig = new DefaultClientConfig();
		defaultClientConfig.getClasses().add(JacksonJsonProvider.class);
		Client client = Client.create(defaultClientConfig);

		WebResource webResource = client.resource(URL + "rest/userService/getUser");

		String input = "{\"login\":\"" + login + "\", \"password\":\"" + password + "\"}";

		ClientResponse response = webResource.type("application/json").post(ClientResponse.class, input);
		
		return response.getEntity(User.class);
	}
}
