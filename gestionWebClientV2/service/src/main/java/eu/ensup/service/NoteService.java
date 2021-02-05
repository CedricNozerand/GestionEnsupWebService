package eu.ensup.service;

import java.util.List;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.GenericType;
import javax.ws.rs.core.Response;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.glassfish.jersey.client.ClientConfig;

import com.fasterxml.jackson.jaxrs.json.JacksonJsonProvider;

public class NoteService implements INoteService{

	private static final Logger LOG = LogManager.getLogger(NoteService.class);

	private static final String URL = "http://localhost:8080/web/";
	
	public NoteService()
	{
		super();
		LOG.info("Démarrage du service NoteService");
	}
	
	public List<Object[]> getLevelsRepartition() {
		LOG.info("Appel de la méthode getLevelsRepartition() du dao");
		
		ClientConfig clientConfig = new ClientConfig();
		clientConfig.register(JacksonJsonProvider.class);

		Client client = ClientBuilder.newClient(clientConfig);

		WebTarget webTarget = client.target(URL).path("rest/noteService/getLevelsRepartition");

		Response response = webTarget.request("application/json").get();

		List<Object[]> list = response.readEntity(new GenericType<List<Object[]>>()
		{
		});
		
		LOG.info(list.get(0)[0]);
		LOG.info(list.get(0)[1]);
		LOG.info(list.get(0)[2]);
		LOG.info("test");
		
		return list;
	}

	public void getStudentsByLevel() {
		
	}
}
