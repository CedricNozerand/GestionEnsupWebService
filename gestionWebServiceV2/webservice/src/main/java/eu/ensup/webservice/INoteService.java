package eu.ensup.webservice;

import java.util.List;

public interface INoteService {

	List<Object[]> getLevelsRepartition();
	
	List<Object[]> getStudentsByLevel(int level);
}
