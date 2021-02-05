package eu.ensup.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NamedNativeQuery;
import javax.persistence.NamedQuery;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;


public class NoteDao implements INoteDao{

	private static final Logger LOG = LogManager.getLogger(NoteDao.class);
	
	public NoteDao()
	{
		super();
		LOG.info("Démarrage du dao NoteDao");
	}
	
	@Override
	public List<Object[]> getLevelsRepartition() {
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("demojpa-pu");

		EntityManager entityManager = entityManagerFactory.createEntityManager();
		
		Query q = entityManager.createNativeQuery("SELECT"
				+ "	sum(case when a.moyenne < 7 then 1 end) as moinsBon"
				+ "    ,sum(case when a.moyenne BETWEEN 7 AND 14 then 1 end) as Moyens"
				+ "    ,sum(case when a.moyenne > 14 then 1 end) as Bons"
				+ " FROM "
				+ "	(SELECT "
				+ "        student_id"
				+ "        ,avg(value) as moyenne "
				+ "    FROM "
				+ "        note "
				+ "    GROUP BY student_id) a");
		
		List<Object[]> result = q.getResultList();
		LOG.info(result);
		return result;
	}

	@Override
	public void getStudentsByLevel() {
		
	}
	
	
	
	
	
//	Query q = em.createNamedQuery("selectAuthorValue");
//	List<AuthorValue> authors = q.getResultList();
//	 
//	for (AuthorValue a : authors) {
//	    System.out.println("Author "
//	            + a.getFirstName()
//	            + " "
//	            + a.getLastName()
//	            + " wrote "
//	            + a.getNumBooks()
//	            + " books.");
//	}
}
