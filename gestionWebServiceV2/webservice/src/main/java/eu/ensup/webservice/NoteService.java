package eu.ensup.webservice;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import eu.ensup.dao.INoteDao;
import eu.ensup.dao.NoteDao;

@Path("/noteService")
public class NoteService implements INoteService{

	private static final Logger LOG = LogManager.getLogger(NoteService.class);

	private INoteDao noteDao;
	
	public NoteService()
	{
		super();
		LOG.info("Démarrage du service StudentService");
		noteDao = new NoteDao();
	}
	
	@GET
	@Path("/getLevelsRepartition")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Object[]> getLevelsRepartition() {
		return noteDao.getLevelsRepartition();
	}

	@Override
	public void getStudentsByLevel() {
		
	}
}
